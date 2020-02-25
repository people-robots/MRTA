# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrta/Bid.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mrta.msg

class Bid(genpy.Message):
  _md5sum = "a062fcd0c764a1d2c6c99c8b1d5ec8be"
  _type = "mrta/Bid"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 auc_id
Task task
int32 robot_id
float32 bid


================================================================================
MSG: mrta/Task
int32 id
int32 start_time
int32 finish_time
int32 est
int32 lst
int32 eft
int32 lft
int32 duration
int32[2] location"""
  __slots__ = ['auc_id','task','robot_id','bid']
  _slot_types = ['int32','mrta/Task','int32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       auc_id,task,robot_id,bid

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Bid, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.auc_id is None:
        self.auc_id = 0
      if self.task is None:
        self.task = mrta.msg.Task()
      if self.robot_id is None:
        self.robot_id = 0
      if self.bid is None:
        self.bid = 0.
    else:
      self.auc_id = 0
      self.task = mrta.msg.Task()
      self.robot_id = 0
      self.bid = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_9i().pack(_x.auc_id, _x.task.id, _x.task.start_time, _x.task.finish_time, _x.task.est, _x.task.lst, _x.task.eft, _x.task.lft, _x.task.duration))
      buff.write(_get_struct_2i().pack(*self.task.location))
      _x = self
      buff.write(_get_struct_if().pack(_x.robot_id, _x.bid))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.task is None:
        self.task = mrta.msg.Task()
      end = 0
      _x = self
      start = end
      end += 36
      (_x.auc_id, _x.task.id, _x.task.start_time, _x.task.finish_time, _x.task.est, _x.task.lst, _x.task.eft, _x.task.lft, _x.task.duration,) = _get_struct_9i().unpack(str[start:end])
      start = end
      end += 8
      self.task.location = _get_struct_2i().unpack(str[start:end])
      _x = self
      start = end
      end += 8
      (_x.robot_id, _x.bid,) = _get_struct_if().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_9i().pack(_x.auc_id, _x.task.id, _x.task.start_time, _x.task.finish_time, _x.task.est, _x.task.lst, _x.task.eft, _x.task.lft, _x.task.duration))
      buff.write(self.task.location.tostring())
      _x = self
      buff.write(_get_struct_if().pack(_x.robot_id, _x.bid))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.task is None:
        self.task = mrta.msg.Task()
      end = 0
      _x = self
      start = end
      end += 36
      (_x.auc_id, _x.task.id, _x.task.start_time, _x.task.finish_time, _x.task.est, _x.task.lst, _x.task.eft, _x.task.lft, _x.task.duration,) = _get_struct_9i().unpack(str[start:end])
      start = end
      end += 8
      self.task.location = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=2)
      _x = self
      start = end
      end += 8
      (_x.robot_id, _x.bid,) = _get_struct_if().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9i = None
def _get_struct_9i():
    global _struct_9i
    if _struct_9i is None:
        _struct_9i = struct.Struct("<9i")
    return _struct_9i
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_if = None
def _get_struct_if():
    global _struct_if
    if _struct_if is None:
        _struct_if = struct.Struct("<if")
    return _struct_if
