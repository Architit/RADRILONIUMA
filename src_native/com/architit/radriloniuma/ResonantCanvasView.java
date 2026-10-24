package com.architit.radriloniuma;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Typeface;
import android.view.View;

public class ResonantCanvasView extends View {
    private Paint gridPaint;
    private Paint circlePaint;
    private Paint pulsePaint;
    private Paint textPaint;
    private Paint cornerPaint;
    private float pulsePhase = 0.0f;
    private boolean animating = true;

    public ResonantCanvasView(Context context) {
        super(context);
        init();
    }

    private void init() {
        gridPaint = new Paint();
        gridPaint.setColor(Color.parseColor("#0e2918"));
        gridPaint.setStrokeWidth(1.5f);
        gridPaint.setStyle(Paint.Style.STROKE);
        gridPaint.setAntiAlias(true);

        circlePaint = new Paint();
        circlePaint.setColor(Color.parseColor("#164526"));
        circlePaint.setStrokeWidth(2.0f);
        circlePaint.setStyle(Paint.Style.STROKE);
        circlePaint.setAntiAlias(true);

        pulsePaint = new Paint();
        pulsePaint.setColor(Color.parseColor("#22c55e"));
        pulsePaint.setStrokeWidth(2.5f);
        pulsePaint.setStyle(Paint.Style.STROKE);
        pulsePaint.setAntiAlias(true);
        pulsePaint.setAlpha(80);

        cornerPaint = new Paint();
        cornerPaint.setColor(Color.parseColor("#22c55e"));
        cornerPaint.setStrokeWidth(3.0f);
        cornerPaint.setStyle(Paint.Style.STROKE);
        cornerPaint.setAntiAlias(true);

        textPaint = new Paint();
        textPaint.setColor(Color.parseColor("#1a5930"));
        textPaint.setTextSize(24.0f);
        textPaint.setTypeface(Typeface.MONOSPACE);
        textPaint.setAntiAlias(true);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        int w = getWidth();
        int h = getHeight();
        if (w <= 0 || h <= 0) return;

        // Base background
        canvas.drawColor(Color.parseColor("#061009"));

        // Coordinate Grid
        int step = 120;
        for (int x = 0; x < w; x += step) {
            canvas.drawLine(x, 0, x, h, gridPaint);
        }
        for (int y = 0; y < h; y += step) {
            canvas.drawLine(0, y, w, y, gridPaint);
        }

        // Center harmonic resonance circles
        float cx = w / 2.0f;
        float cy = h / 2.0f;

        canvas.drawCircle(cx, cy, 140.0f, circlePaint);
        canvas.drawCircle(cx, cy, 280.0f, circlePaint);
        canvas.drawCircle(cx, cy, 420.0f, circlePaint);

        // Dynamic 528 Hz Pulsing Ring
        float pulseRadius = 140.0f + (float) Math.sin(pulsePhase) * 60.0f;
        int alpha = (int) (60 + Math.sin(pulsePhase) * 40);
        if (alpha < 20) alpha = 20;
        if (alpha > 120) alpha = 120;
        pulsePaint.setAlpha(alpha);
        canvas.drawCircle(cx, cy, pulseRadius, pulsePaint);

        // Diagonal HUD guides
        canvas.drawLine(cx - 200, cy - 200, cx + 200, cy + 200, gridPaint);
        canvas.drawLine(cx - 200, cy + 200, cx + 200, cy - 200, gridPaint);

        // Technical Corner Accents
        float cLen = 40.0f;
        float pad = 24.0f;
        // Top-left
        canvas.drawLine(pad, pad, pad + cLen, pad, cornerPaint);
        canvas.drawLine(pad, pad, pad, pad + cLen, cornerPaint);
        // Top-right
        canvas.drawLine(w - pad - cLen, pad, w - pad, pad, cornerPaint);
        canvas.drawLine(w - pad, pad, w - pad, pad + cLen, cornerPaint);
        // Bottom-left
        canvas.drawLine(pad, h - pad, pad + cLen, h - pad, cornerPaint);
        canvas.drawLine(pad, h - pad - cLen, pad, h - pad, cornerPaint);
        // Bottom-right
        canvas.drawLine(w - pad - cLen, h - pad, w - pad, h - pad, cornerPaint);
        canvas.drawLine(w - pad, h - pad - cLen, w - pad, h - pad, cornerPaint);

        // Faint telemetry watermark
        canvas.drawText("528 Hz RES | 432 Hz BASE | HARMONIZED", pad + 10, h - pad - 15, textPaint);
        canvas.drawText("NODE_02_ARM64_EDGE // ATESIRT", pad + 10, pad + 35, textPaint);

        if (animating) {
            pulsePhase += 0.05f;
            if (pulsePhase > 6.283f) {
                pulsePhase -= 6.283f;
            }
            postInvalidateDelayed(50);
        }
    }
}
