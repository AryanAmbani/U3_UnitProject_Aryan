class carB

{
  private float _y;
  private float _x;
  private float _img;
  private boolean _isActive;

  float getx()
  {
    return _x;
  }  

  float gety()
  {
    return _y;
  }

  void setY(float _y)
  {
    _y=y;
  }

  void setX(float _x)
  {
    _x=x;
  }

  carB (float x, float y, boolean isActive)
  {
    _x=x;
    _y=y;
    isActive=_isActive;
  }

  void Draw()

  {

    image(carB, _x, _y);
  }
  void Update()
  {

    if (_x> width)
    {
      _x = 300;
      _y = 200;
    }

    if (_x < 0)
    {
      _x = 300;
      _y = 200;
    }

    if (_x > height)
    {
      _x = 300;
      _y = 200;
    }
    if (_y < 0)
    {
      _x = 300;
      _y = 200;
    }

    if (_left)
    {
      car2.setX(car2.getx()-2);
    }

    if (_right)
    {
      car2.setX(car2.getx()+2);
    }

    if (_down)
    {
      car2.setY(car2.gety()-2);
    }

    if (_up)
    {
      car2.setY(car2.gety()+2);
    }
  }
}