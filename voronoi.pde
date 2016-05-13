class Point {
    public int x;
    public int y;
    public color _color;

    Point(int x, int y, color _color) {
        this.x = x;
        this.y = y;
        this._color = _color;
    }
}

static final int XSIZE = 640;
static final int YSIZE = 360;
ArrayList < Point > points;
boolean redraw = false;

void setup() {
    points = new ArrayList < Point > ();
    size(640, 360); //ENSURE MATCHES XSIZE & YSIZE.  CAN'T BE SET FROM VARIABLES (-_-')
    background(255);
}

void draw() {
    if (redraw) {
        for (int x = 0; x < XSIZE; x++) {
            for (int y = 0; y < YSIZE; y++) {
                float min = Integer.MAX_VALUE;
                color fillcolor = color(0);

                for (Point point: points) {
                    float dist = getDistance(x, y, point.x, point.y);

                    if (dist < min) {
                        min = dist;
                        fillcolor = point._color;
                    }
                }

                set(x, y, fillcolor);
            }
        }

        fill(0);
        for (Point point: points) {
            ellipse(point.x, point.y, 5, 5);
        }

        redraw = false;
    }
}

void mouseClicked() {
    points.add(new Point(mouseX, mouseY, color(random(255), random(255), random(255))));
    redraw = true;
}

float getDistance(int x1, int y1, int x2, int y2) {
    return (float) sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
}