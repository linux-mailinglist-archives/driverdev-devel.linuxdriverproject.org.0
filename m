Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B1825FB29
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 15:17:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D12F185FDE;
	Mon,  7 Sep 2020 13:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9p7dsZnJnCqe; Mon,  7 Sep 2020 13:17:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E315F86079;
	Mon,  7 Sep 2020 13:17:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA03A1BF362
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 13:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C186C85F56
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 13:17:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Arq2qpPhLMhT for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 13:17:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B5ECE860D1
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 13:17:07 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id q9so14368304wmj.2
 for <devel@driverdev.osuosl.org>; Mon, 07 Sep 2020 06:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=o5m0sH/N7cCnwPUKkHCQOqQoPvy8f5QHK4tZgUjFtd4=;
 b=LZqsMeYXuEy5IVSHg2E0jZGdUmWlkKhlF+ua+T5sgMsN8+uUhxGhFLIc+BAQSHe8gg
 TGXjxmndpXMhiXRofurgK2TnD5QCar1PhY1DYIBJ6n38NIi6iRIMCTMhENqz/NnaaVbz
 wfhGFGnZe/PC3r2b6YZOr+R7rLxQ/pkaNgIuSfCgW54stKStsfGOrMxFrgk4b2MUL7NB
 RuAB7zw68xTHNDNsLqaf+XQhIJU8riF/4AVa22wXlIbvaskx/Ooq6wFAuNySWd4vXcGP
 q8kK4J10sGcKQKpXHmCuvEZGBLuBCpcHkeMlvUBpuo4q5jVIaYUbv3G6QcQ8B2dFBPA1
 khkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=o5m0sH/N7cCnwPUKkHCQOqQoPvy8f5QHK4tZgUjFtd4=;
 b=bOdrnVi2KRwWzmHYy4weBlK58V2OtqiSkvt9Oej3buiF6HT69P9LQr3iVMONo3um1I
 TX10rN+rirQ4jfzw30PdDWHUgDaxS9XD/dOK17JIg7Xr4Mp/XJ/iQmwXfZtE0qDF9DAd
 WLE3EEE0FwNH78pz1hPrBN+AeJ7te1S+0c+AaGnfDhZ+IbzL42XOS2hTDme0tozCsuVJ
 46sQlDPkayg1qSp5KDz0jlWWLV/KIJcmpffp+rd3NDccTHdctdoXFeg4dMnLCtJp8HNo
 IjSerogSyvSiSJzZZZe5pzjqqAbC5RuWVpatogjLBaS81Qc8HF/3mNRmfBhDaJEXnpxO
 EGwg==
X-Gm-Message-State: AOAM531HAYMlzVf3S6nIFVRYjJUeexA7w4bM0ApNiWQlk866bs454iUO
 Bn26ba389x+ibXquNR77YRsXuZ3sp/YprTgI
X-Google-Smtp-Source: ABdhPJxhtNcucVpnTaOZFQRPh82YCLNyzVBKX1rb3BhMtc9peJR56G4dS2uCbv1jX1xcZBpelWb6kw==
X-Received: by 2002:a1c:4e08:: with SMTP id g8mr20279782wmh.53.1599484625414; 
 Mon, 07 Sep 2020 06:17:05 -0700 (PDT)
Received: from [192.168.1.211] ([2.29.208.34])
 by smtp.gmail.com with ESMTPSA id d18sm28421057wrm.10.2020.09.07.06.17.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Sep 2020 06:17:04 -0700 (PDT)
From: Dan Scally <djrscally@gmail.com>
Subject: Re: [PATCH] media: ipu3: add a module to probe sensors via ACPI
To: Jordan Hand <jorhand@linux.microsoft.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <12fbe3f5c6a16c5f3447adbc09fe27ceb2b16823.1589625807.git.mchehab+huawei@kernel.org>
 <20200517103659.GS17578@paasikivi.fi.intel.com>
 <20200520094400.5137e7f2@coco.lan>
 <20200520082608.GV20066@paasikivi.fi.intel.com>
 <20200520131830.3ff45919@coco.lan>
 <CAHp75VduEGyzobm0hkXzWmFfZb-uMAEWG-wc89b7M7zVzZ_4LA@mail.gmail.com>
 <20200522115736.10cca8eb@coco.lan>
 <20200526143110.GC3284396@kuha.fi.intel.com>
 <6c24193c-0ba4-7c6e-1711-8221ee133826@linux.microsoft.com>
Autocrypt: addr=djrscally@gmail.com; keydata=
 mQENBFina8MBCADkNzdnhXy3WNmwSRURUuwDEpqALrwJpwiq7Bfy50y/RBoUOxbNGVif2KVu
 s9ySvNdIGTw1tBiT5sHPRulooStAyBen0iznt1rrb6UY9ehVpTqjv2u8WvM1A6AgD8mOFnHP
 cX7qeCMOeaFPv2afopMgueN+VADDTc91nxl25EQGFITzxlqCKfZw3iPHCnRudSenBpfvuUgK
 ejj8a87cOoLnTrK4yHUnte3YtRZhKGpYPNsPBvWstTEeQZ9W92rU2iqgsTPt0HDcys8O+j9l
 Ariut5bnYCk8b7pZGwmuwv7Ak8QyukEuWzTLdCo84AStil4hUITKDFp2oi4kp5/r+CtxABEB
 AAG0QURhbmllbCBTY2FsbHkgKFBlcnNvbmFsIFBHUCBmb3IgZGFpbHkgdXNlLikgPGRqcnNj
 YWxseUBnbWFpbC5jb20+iQE5BBMBCAAjBQJYp2vDAhsDBwsJCAcDAgEGFQgCCQoLBBYCAwEC
 HgECF4AACgkQ6+4IZDQM6eJBKAf9GjH1iOW2ZZIwKzusCshtqYM3IOtd52eQ+c0Yc+9IWFOA
 Wg93SC52yNGi9mRkgrPDY6R8o4ULjGn9eRI3WWMSMVnJ9D7zt7BdkUa+dOPma7KA7GyEdQsE
 fgIYdbn1EEogt+rSjbgMY4YnRf4wq+wSjLXMno09s26o3Eqq3Ngdvp8WL5pZtrpPape7jZTj
 +YFxbPzkUpF8heSFYGR0B5F7DF0nyBgH1wV/FuFwbqf9UOVdNIMmiw1XsZ5l2i79em34MFGl
 AB+5jTUMQd1KzzFMDzyBlcATXhFDbh13yb3QR8QTId4/GIWizPX7V0MwEWDgq/M/geN1z4uB
 aKgh9n69tLkBDQRYp2vDAQgAvXd0Qjyv+lOWn9nWK9insHzcJMneNrv5VZvoVfxJq9pLOeYO
 VAd/jv0YmXkyWSolV1kxb20aCyMLbH222u6ek3zUSXBBxpJWyKxNMpGLZ6ZZpZRgnMt+swVS
 xOXj2zYByMbMJOrRBKd2YjHkdjjO+gS7EjkZJVTigMKqOXqlEWiWeejt3lq9dZAokdfZVf9Y
 Dk8IHqsPnH6z0edZVK8lLge4FWreXh6Fu9IFdUlSuYh+csGItxMDipbo1LAP4xiPtplJGZmO
 N6DRMUAgmxx/ggPMAZV5LH+/yBt7PZFBKwuZHXcQxLT0Z7pow9WaEAA+NTNTR3AGTakR/u01
 mfMw1wARAQABiQEfBBgBCAAJBQJYp2vDAhsMAAoJEOvuCGQ0DOniwEoH/27UZUfUwIceOjZw
 p+sKyrOsy0bBjYZoVFOFW2nUhpbueLbGeVo8uccMETlyOKen1Xt1MAtGztLXVFBXeaS6RH0q
 Zqo1pZHVDi2dHHiQW/gJwKbcLR4T1HMj8YSc14LS/1PHejfVXq0RxXHLScS/gRcAs2c7bcNi
 QolEKV2LoICKyRipx0MYFggWdEW6E6448AF5UMpdk4mEjQ7rBj1+vHu+TkA1Qv1SfaBTtotb
 82GvWJc7f31Fck5e0KffJmVGFEpONyY6zBT+WJ01cPRhuAT0QOndePYA4IFGrM63Rcg/EPSp
 7sZDBPXqUZgPmQyyZ4RjEaVuNWsPSMB5FSNYHdg=
Message-ID: <6c6e63c1-0070-f336-6361-fc6cc9c044fd@gmail.com>
Date: Mon, 7 Sep 2020 14:17:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6c24193c-0ba4-7c6e-1711-8221ee133826@linux.microsoft.com>
Content-Language: en-US
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kieran.bingham@ideasonboard.com, kitakar@gmail.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 01/07/2020 02:16, Jordan Hand wrote:
> On 5/26/20 7:31 AM, Heikki Krogerus wrote:
>> On Fri, May 22, 2020 at 11:57:36AM +0200, Mauro Carvalho Chehab wrote:
>>> Em Thu, 21 May 2020 11:00:19 +0300
>>> Andy Shevchenko <andy.shevchenko@gmail.com> escreveu:
>>>
>>>> +Cc: Heikki (swnode expert)
>>>>
>>>> On Wed, May 20, 2020 at 2:19 PM Mauro Carvalho Chehab
>>>> <mchehab+huawei@kernel.org> wrote:
>>>>> Em Wed, 20 May 2020 11:26:08 +0300
>>>>> Sakari Ailus <sakari.ailus@linux.intel.com> escreveu:
>>>>
>>>> ...
>>>>
>>>>> As I said, the problem is not probing the sensor via ACPI, but,
>>>>> instead,
>>>>> to be able receive platform-specific data.
>>>>
>>>> There is no problem with swnodes, except missing parts (*).
>>>> I have Skylake laptop with IPU3 and with half-baked ACPI tables, but
>>>> since we have drivers in place with fwnode support, we only need to
>>>> recreate fwnode graph in some board file to compensate the gap in
>>>> ACPI.
>>>>
>>>> *) Missing part is graph support for swnodes. With that done it will
>>>> be feasible to achieve the rest.
>>>> I forgot if we have anything for this already done. Heikki?
>>>
>>> Hmm... I guess I should try this approach. I never heard about swnodes
>>> before. Do you have already some patch with the needed swnodes setup,
>>> and the missing parts to recreate the fwnode graph?
>>
>> Here you go.
>>
>
> For anyone interested, I have taken Heikki's patch and attempted to
> use swnodes to patch the incomplete dsdt on my laptop to use with
> ipu3; the code is currently in a github repo[1].
>
> In particular, patches 1, 2, and 3 setup the software_node
> infrastructure. Patch 5 shows how we might use software nodes where
> ACPI fails.
>
> My sensor driver (in patch 4) doesn't actually work right now which is
> why I haven't brought any of this to the mailing list yet, but that's
> another story :)
>
> I would just submit a patchset, but since my sensor driver doesn't
> work, I can't gully test the rest of it. But if someone has a system
> where the drivers in question are upstream and work, something like
> this could be a good path forward.
>
> - Jordan
>
> [1] https://github.com/jhand2/surface-camera/tree/master/patches
>
>
Hello all

I joined in these efforts [2] to get cameras working on
Microsoft Surface and similar platforms, currently I'm working on
expanding Jordan's module connecting cameras to the cio2
infrastructure (which works - we can use it to take images), aiming to
discover connection information from SSDB in the DSDT, as well as
connect as many supported sensors as are found on the device. I'm just
struggling with a problem I've encountered using the swnode patch that
Heikki linked in this thread; the module's working ok when I only
attempt to connect a single one of my sensors (by preventing the
driver for the other sensor from loading, in which case this new
module ignores the sensor), but when I attempt to connect both cameras
at the same time I get a kernel oops as part of
software_node_get_next_child. The module is creating software_nodes
like this...

/sys/kernel/software_node/INT343E/port0/endpoint0
/sys/kernel/software_node/INT343E/port1/endpoint0
/sys/kernel/software_node/OVTI2680/port0/endpoint0
/sys/kernel/software_node/OVTI5648/port0/endpoint0

And that's the structure that I expect to see, but it seems like the
call to list_next_entry in that function is returning something that
isn't quite a valid swnode. Printing the address of c->fwnode after
that point returns "3", which isn't a valid address of course, and
that's causing the oops when it's either returned (in the version of
the function without the patches) or when the program flow tries to
call the "get" op against that fwnode (in the patched version). I've
been trying to track it down for a while now without success, so I
posted the problem on SO[3] and it was suggested that I mail these
addressees for advice - hope that that is ok.


My copy of Jordan's module is parked in my git repo [4] for now, and
requires the batch of patches from Jordan's repo [5] -
I've been applying those against 5.8.0-rc7. Any other criticism more
than welcome - I'm new to both c and kernel programming so I'm happy
to take all the advice people have the time to give.


On a more general note; Kieran from the libcamera project suggested we
ought to be talking to you guys anyway to get some guidance on design,
and some more expert eye on the things we don't really understand. In
particular; we haven't been able to figure out how sensors that are
intended to work with the cio2 ipu3 stuff have their clock/regulators
supplied - in fact I can strip all the "usual" clock/regulator
functionality out of my camera's driver and it still functions fine,
which seems a bit weird. So far all we're doing as "power management"
of the camera's is turning on the GPIO pins that DSDT tables assign to
the tps68470 PMICs the cameras are theoretically hooked up to...but
given the drivers continue to work without using the PMICs regulator
and clk drivers (which we found in the intel-lts tree on Github),
we're a bit confused exactly how these are connected. Given the
potential for actual hardware damage if we mess something up there
it'd be great if anyone can shed some light on those elements.


Regards

Dan


[2] https://github.com/linux-surface/linux-surface/issues/91

[3] https://stackoverflow.com/questions/63742967/what-is-causing-this-kernel-oops-when-parsing-firmware?

[4] https://github.com/djrscally/miix-510-cameras/blob/master/surface_camera/surface_camera.c

[5] https://github.com/jhand2/surface-camera/tree/master/patches



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
