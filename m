Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D7A1DFEDA
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 14:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C4BD8690E;
	Sun, 24 May 2020 12:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O4iO-xmjlTno; Sun, 24 May 2020 12:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83BA486519;
	Sun, 24 May 2020 12:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 269A31BF313
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 12:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2345C86508
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 12:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dJV4PAfevTT5 for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 12:10:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 57213864F2
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 12:10:49 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id n24so17872257ejd.0
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 05:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=4ayDjmnV9wYd0v9NacT19DJlRfTJRH5YTbcBXU3gcpg=;
 b=aPIfkKpO7kigQPfEldp9Xws0ZD44QpI5CbSuno2Jca4LXIIp+n0/f7AKbL9CjdhuRR
 EzMgwu0yPikRRw6m2RMdUC6uQKGp4TlFQrbBtczR7/J9rIpILcE1ZEWALfX60c0O1sua
 KbOfTdHYw0NPvBLbbXJcJVad8iXpIiaojfXBpMM18IV+hjNmzXZpzb8tk2q0PJ21B11K
 S1kBs42mXCVj19BUxPfedpwxvPL5H6MNaImrg2gcA4BvjtiUxCOCaDEsm2pbQ0cYIgiQ
 AWxeLmZTUClGwlkmMj+iniZ65kIWFAY7LGC5b3Ger6MI9lhoSmeDka7MUanxBMnrTp8P
 Mnxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=4ayDjmnV9wYd0v9NacT19DJlRfTJRH5YTbcBXU3gcpg=;
 b=XwSzhZj7WpMgY7eyCtG/vZe18y/DLCVKp2yhMmbMGk3Cd3ziNSjMYpypw/YPVZd1I5
 wBm0j4ZOoMlQeN65OWVMjxm1wuNbTsozsZOpIi2tOMoJNPQt/Jc//fDO84MweL65/w9F
 W68aWNBT7YXDEkEd3lcq9/Kw9uZiMhlbitGIJpv9pvBKytqhOa6fyLURZrHOItrZcbJ5
 f9IRxSJo9o9ztDui4KGpcv0wQQ37LI/MalkrM8Bse5M25KayO8jTwh0tgSfIDU4bfZub
 Zqzbki4drtMynmPBBe5rab+nSFVS3EpkHXAP/VprwjsAbkzKzFr9v8TA4Nt8+OGKZLXO
 o3/g==
X-Gm-Message-State: AOAM530i+Tv18oLVCCiDQxQ2qLlR3IYc260Ptjo2tDM4Xr6XKxYplzhy
 1tP9vtKQOg5zq9Ma+zNmE24=
X-Google-Smtp-Source: ABdhPJxus4k2TWfmkR+MhNp0m0+uKtAUJMXn0B7J20VT2yeL+yFHvii6wVFBe9hCcOfoFqosNXVdKQ==
X-Received: by 2002:a17:906:7684:: with SMTP id
 o4mr15832306ejm.449.1590322247701; 
 Sun, 24 May 2020 05:10:47 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:b7f9:7600:ed3c:ef0e:6f3d:f78f])
 by smtp.gmail.com with ESMTPSA id cq10sm12766130edb.48.2020.05.24.05.10.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 05:10:46 -0700 (PDT)
Date: Sun, 24 May 2020 14:10:44 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Gaurav Pathak <gauravpathak129@gmail.com>
Subject: Re: [PATCH] Removing ununsed variable int lo, hi, int data and int i
 from comedi/drivers/dt2814.c.
Message-ID: <20200524121044.fzpm6hkqrrpa2yhc@ltop.local>
References: <20200524113613.GA19734@xebrium.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200524113613.GA19734@xebrium.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, abbotti@mev.co.uk,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpPbiBTdW4sIE1heSAyNCwgMjAyMCBhdCAwNTowNjoxOFBNICswNTMwLCBHYXVyYXYgUGF0
aGFrIHdyb3RlOgo+IFNpbGVuY2UgZm9sbG93aW5nIHNwYXJzZSB3YXJuaW5nOgo+IGRyaXZlcnMv
c3RhZ2luZy9jb21lZGkvZHJpdmVycy9kdDI4MTQuYzogSW4gZnVuY3Rpb24g4oCYZHQyODE0X2lu
dGVycnVwdOKAmToKPiBkcml2ZXJzL3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvZHQyODE0LmM6MTkz
OjY6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmGRhdGHigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVz
ZWQtYnV0LXNldC12YXJpYWJsZV0KPiAgIGludCBkYXRhOwo+ICAgICAgIF5+fn4KPiBkcml2ZXJz
L3N0YWdpbmcvY29tZWRpL2RyaXZlcnMvZHQyODE0LmM6IEluIGZ1bmN0aW9uIOKAmGR0MjgxNF9h
dHRhY2jigJk6Cj4gZHJpdmVycy9zdGFnaW5nL2NvbWVkaS9kcml2ZXJzL2R0MjgxNC5jOjIzMjo2
OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhp4oCZIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1
dC1zZXQtdmFyaWFibGVdCj4gICBpbnQgaTsKPiAgICAgICBeCgpUaGVzZSB3YXJuaW5ncyBhcmUg
bm90IGZyb20gc3BhcnNlIGJ1dCBzaW1wbHkgZnJvbSB0aGUgY29tcGlsZXIuCiAKPiAgc3RhdGlj
IGlycXJldHVybl90IGR0MjgxNF9pbnRlcnJ1cHQoaW50IGlycSwgdm9pZCAqZCkKPiAgewo+IC0J
aW50IGxvLCBoaTsKPiAgCXN0cnVjdCBjb21lZGlfZGV2aWNlICpkZXYgPSBkOwo+ICAJc3RydWN0
IGR0MjgxNF9wcml2YXRlICpkZXZwcml2ID0gZGV2LT5wcml2YXRlOwo+ICAJc3RydWN0IGNvbWVk
aV9zdWJkZXZpY2UgKnMgPSBkZXYtPnJlYWRfc3ViZGV2Owo+IC0JaW50IGRhdGE7Cj4gIAo+ICAJ
aWYgKCFkZXYtPmF0dGFjaGVkKSB7Cj4gIAkJZGV2X2VycihkZXYtPmNsYXNzX2RldiwgInNwdXJp
b3VzIGludGVycnVwdFxuIik7Cj4gIAkJcmV0dXJuIElSUV9IQU5ETEVEOwo+ICAJfQo+ICAKPiAt
CWhpID0gaW5iKGRldi0+aW9iYXNlICsgRFQyODE0X0RBVEEpOwo+IC0JbG8gPSBpbmIoZGV2LT5p
b2Jhc2UgKyBEVDI4MTRfREFUQSk7Cj4gLQo+IC0JZGF0YSA9IChoaSA8PCA0KSB8IChsbyA+PiA0
KTsKCk9LLCAnZGF0YScgaXMgdW51c2VkIGJ1dCBhcmUgdGhlc2UgMiAnaW5iKGRldi0+aW9iYXNl
ICsgRFQyODE0X0RBVEEpJwpuZWVkZWQgb3Igbm90PyBJIHdvdWxkIGd1ZXNzIHRoYXQgdGhleSdy
ZSBuZWVkZWQgYnV0IEkgZG9uJ3Qga25vdwp0aGlzIGhhcmR3YXJlLgoKPiBAQCAtMjQxLDggKzIz
Myw2IEBAIHN0YXRpYyBpbnQgZHQyODE0X2F0dGFjaChzdHJ1Y3QgY29tZWRpX2RldmljZSAqZGV2
LCBzdHJ1Y3QgY29tZWRpX2RldmNvbmZpZyAqaXQpCj4gIAkJZGV2X2VycihkZXYtPmNsYXNzX2Rl
diwgInJlc2V0IGVycm9yIChmYXRhbClcbiIpOwo+ICAJCXJldHVybiAtRUlPOwo+ICAJfQo+IC0J
aSA9IGluYihkZXYtPmlvYmFzZSArIERUMjgxNF9EQVRBKTsKPiAtCWkgPSBpbmIoZGV2LT5pb2Jh
c2UgKyBEVDI4MTRfREFUQSk7CgpTYW1lIGhlcmUuCgotLSBMdWMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
