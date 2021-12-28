# sentry-notice
sentry 接入dingding 告警

> 安装sentry
* 下载sentry, 使用docker-compose 安装
* 注: 每个sentry 版本，都有支持的docker 及 docker-compose 版本
* pip install sentry 会有依赖不能下载
* 使用下载的sentry 镜像作为虚拟环境
* main.py 及 Dockerfile 只是为了查看源码

### 发送告警
```
{
    "event_id": "5a552273622c4d949495df39b7b063c8",
    "level": "error",
    "version": "5",
    "type": "default",
    "logentry": {
        "formatted": "This is an example Python exception"
    },
    "logger": "",
    "modules": {
        "my.package": "1.0.0"
    },
    "platform": "python",
    "timestamp": 1640577300.559,
    "received": 1640577360.560556,
    "environment": "prod",
    "user": {
        "id": "1",
        "email": "sentry@example.com",
        "ip_address": "127.0.0.1",
        "username": "sentry",
        "name": "Sentry",
        "geo": {
            "country_code": "GB",
            "city": "London",
            "region": "H9"
        }
    },
    "request": {
        "url": "http://example.com/foo",
        "method": "GET",
        "data": {
            "hello": "world"
        },
        "query_string": [
            [
                "foo",
                "bar"
            ]
        ],
        "cookies": [
            [
                "foo",
                "bar"
            ],
            [
                "biz",
                "baz"
            ]
        ],
        "headers": [
            [
                "Content-Type",
                "application/json"
            ],
            [
                "Referer",
                "http://example.com"
            ],
            [
                "User-Agent",
                "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36"
            ]
        ],
        "env": {
            "ENV": "prod"
        },
        "inferred_content_type": "application/json"
    },
    "contexts": {
        "browser": {
            "name": "Chrome",
            "version": "28.0.1500",
            "type": "browser"
        },
        "client_os": {
            "name": "Windows",
            "version": "8",
            "type": "os"
        }
    },
    "stacktrace": {
        "frames": [
            {
                "function": "build_msg",
                "module": "raven.base",
                "filename": "raven/base.py",
                "abs_path": "/home/ubuntu/.virtualenvs/getsentry/src/raven/raven/base.py",
                "lineno": 303,
                "pre_context": [
                    "                frames = stack",
                    "",
                    "            data.update({",
                    "                'sentry.interfaces.Stacktrace': {",
                    "                    'frames': get_stack_info(frames,"
                ],
                "context_line": "                        transformer=self.transform)",
                "post_context": [
                    "                },",
                    "            })",
                    "",
                    "        if 'sentry.interfaces.Stacktrace' in data:",
                    "            if self.include_paths:"
                ],
                "in_app": false,
                "vars": {
                    "'culprit'": null,
                    "'data'": {
                        "'message'": "u'This is a test message generated using ``raven test``'",
                        "'sentry.interfaces.Message'": {
                            "'message'": "u'This is a test message generated using ``raven test``'",
                            "'params'": []
                        }
                    },
                    "'date'": "datetime.datetime(2013, 8, 13, 3, 8, 24, 880386)",
                    "'event_id'": "'54a322436e1b47b88e239b78998ae742'",
                    "'event_type'": "'raven.events.Message'",
                    "'extra'": {
                        "'go_deeper'": [
                            [
                                "{\"'bar'\":[\"'baz'\"],\"'foo'\":\"'bar'\"}"
                            ]
                        ],
                        "'loadavg'": [
                            0.37255859375,
                            0.5341796875,
                            0.62939453125
                        ],
                        "'user'": "'dcramer'"
                    },
                    "'frames'": "<generator object iter_stack_frames at 0x107bcc3c0>",
                    "'handler'": "<raven.events.Message object at 0x107bd0890>",
                    "'k'": "'sentry.interfaces.Message'",
                    "'kwargs'": {
                        "'level'": 20,
                        "'message'": "'This is a test message generated using ``raven test``'"
                    },
                    "'public_key'": null,
                    "'result'": {
                        "'message'": "u'This is a test message generated using ``raven test``'",
                        "'sentry.interfaces.Message'": {
                            "'message'": "u'This is a test message generated using ``raven test``'",
                            "'params'": []
                        }
                    },
                    "'self'": "<raven.base.Client object at 0x107bb8210>",
                    "'stack'": true,
                    "'tags'": null,
                    "'time_spent'": null,
                    "'v'": {
                        "'message'": "u'This is a test message generated using ``raven test``'",
                        "'params'": []
                    }
                }
            },
            {
                "function": "capture",
                "module": "raven.base",
                "filename": "raven/base.py",
                "abs_path": "/home/ubuntu/.virtualenvs/getsentry/src/raven/raven/base.py",
                "lineno": 459,
                "pre_context": [
                    "        if not self.is_enabled():",
                    "            return",
                    "",
                    "        data = self.build_msg(",
                    "            event_type, data, date, time_spent, extra, stack, tags=tags,"
                ],
                "context_line": "            **kwargs)",
                "post_context": [
                    "",
                    "        self.send(**data)",
                    "",
                    "        return (data.get('event_id'),)",
                    ""
                ],
                "in_app": false,
                "vars": {
                    "'data'": null,
                    "'date'": null,
                    "'event_type'": "'raven.events.Message'",
                    "'extra'": {
                        "'go_deeper'": [
                            [
                                "{\"'bar'\":[\"'baz'\"],\"'foo'\":\"'bar'\"}"
                            ]
                        ],
                        "'loadavg'": [
                            0.37255859375,
                            0.5341796875,
                            0.62939453125
                        ],
                        "'user'": "'dcramer'"
                    },
                    "'kwargs'": {
                        "'level'": 20,
                        "'message'": "'This is a test message generated using ``raven test``'"
                    },
                    "'self'": "<raven.base.Client object at 0x107bb8210>",
                    "'stack'": true,
                    "'tags'": null,
                    "'time_spent'": null
                }
            },
            {
                "function": "captureMessage",
                "module": "raven.base",
                "filename": "raven/base.py",
                "abs_path": "/home/ubuntu/.virtualenvs/getsentry/src/raven/raven/base.py",
                "lineno": 577,
                "pre_context": [
                    "        \"\"\"",
                    "        Creates an event from ``message``.",
                    "",
                    "        >>> client.captureMessage('My event just happened!')",
                    "        \"\"\""
                ],
                "context_line": "        return self.capture('raven.events.Message', message=message, **kwargs)",
                "post_context": [
                    "",
                    "    def captureException(self, exc_info=None, **kwargs):",
                    "        \"\"\"",
                    "        Creates an event from an exception.",
                    ""
                ],
                "in_app": false,
                "vars": {
                    "'kwargs'": {
                        "'data'": null,
                        "'extra'": {
                            "'go_deeper'": [
                                "[{\"'bar'\":[\"'baz'\"],\"'foo'\":\"'bar'\"}]"
                            ],
                            "'loadavg'": [
                                0.37255859375,
                                0.5341796875,
                                0.62939453125
                            ],
                            "'user'": "'dcramer'"
                        },
                        "'level'": 20,
                        "'stack'": true,
                        "'tags'": null
                    },
                    "'message'": "'This is a test message generated using ``raven test``'",
                    "'self'": "<raven.base.Client object at 0x107bb8210>"
                }
            },
            {
                "function": "send_test_message",
                "module": "raven.scripts.runner",
                "filename": "raven/scripts/runner.py",
                "abs_path": "/home/ubuntu/.virtualenvs/getsentry/src/raven/raven/scripts/runner.py",
                "lineno": 77,
                "pre_context": [
                    "        level=logging.INFO,",
                    "        stack=True,",
                    "        tags=options.get('tags', {}),",
                    "        extra={",
                    "            'user': get_uid(),"
                ],
                "context_line": "            'loadavg': get_loadavg(),",
                "post_context": [
                    "        },",
                    "    ))",
                    "",
                    "    if client.state.did_fail():",
                    "        print('error!')"
                ],
                "in_app": false,
                "vars": {
                    "'client'": "<raven.base.Client object at 0x107bb8210>",
                    "'data'": null,
                    "'k'": "'secret_key'",
                    "'options'": {
                        "'data'": null,
                        "'tags'": null
                    }
                }
            },
            {
                "function": "main",
                "module": "raven.scripts.runner",
                "filename": "raven/scripts/runner.py",
                "abs_path": "/home/ubuntu/.virtualenvs/getsentry/src/raven/raven/scripts/runner.py",
                "lineno": 112,
                "pre_context": [
                    "    print(\"Using DSN configuration:\")",
                    "    print(\" \", dsn)",
                    "    print()",
                    "",
                    "    client = Client(dsn, include_paths=['raven'])"
                ],
                "context_line": "    send_test_message(client, opts.__dict__)",
                "in_app": false,
                "vars": {
                    "'args'": [
                        "'test'",
                        "'https://ebc35f33e151401f9deac549978bda11:f3403f81e12e4c24942d505f086b2cad@sentry.io/1'"
                    ],
                    "'client'": "<raven.base.Client object at 0x107bb8210>",
                    "'dsn'": "'https://ebc35f33e151401f9deac549978bda11:f3403f81e12e4c24942d505f086b2cad@sentry.io/1'",
                    "'opts'": "<Values at 0x107ba3b00: {'data': None, 'tags': None}>",
                    "'parser'": "<optparse.OptionParser instance at 0x107ba3368>",
                    "'root'": "<logging.Logger object at 0x107ba5b10>"
                }
            }
        ]
    },
    "tags": [
        [
            "level",
            "error"
        ],
        [
            "server_name",
            "web01.example.org"
        ]
    ],
    "extra": {
        "emptyList": [],
        "emptyMap": {},
        "length": 10837790,
        "results": [
            1,
            2,
            3,
            4,
            5
        ],
        "session": {
            "foo": "bar"
        },
        "unauthorized": false,
        "url": "http://example.org/foo/bar/"
    }
```
## 相关模块
### group
#### see: https://github1s.com/getsentry/sentry/blob/HEAD/src/sentry/models/group.py#L385 class Group(Model)
### project
#### see: https://github1s.com/getsentry/sentry/blob/HEAD/src/sentry/models/project.py
### event
#### see: https://github1s.com/getsentry/sentry/blob/HEAD/src/sentry/eventstore/models.py#L118
#### see: https://github1s.com/getsentry/sentry/blob/HEAD/src/sentry/snuba/events.py

### EM
* 玩吧 玩在一起