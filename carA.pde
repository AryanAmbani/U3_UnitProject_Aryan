class carA

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

  void setY(float y1)
  {
    _y=y1;
  }

  void setX(float x1)
  {
    _x=x1;
  }

  carA (float x, float y, boolean isActive)
  {
    _x=x;
    _y=y;
    isActive=_isActive;
  }

  void Draw()

  {
    image(carA, _x, _y);
  }
  void Update()
  {
    if (_x> width)
    {
      _x = 300;
      _y = 160;
    }

    if (car1.getx() < 0)
    {
      _x = 300;
      _y = 160;
    }

    if (_x > height)
    {
      _x = 300;
      _y = 160;
    }
    if (_y < 0)
    {
      _x = 300;
      _y = 160;
    }
    if (_a)
    {
      car1.setX(car1.getx()-2);
    }

    if (_s)
    {
      car1.setY(car1.gety()-2);
    }

    if (_w)
    {
      car1.setY(car1.gety()-2);
    }

    if (_d)
    {
      car1.setX(car1.getx()+2);
    }
  }
}