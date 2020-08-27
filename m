Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D23AE253B2F
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 02:50:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9EBDB23026;
	Thu, 27 Aug 2020 00:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y+-KxxVh6Hwi; Thu, 27 Aug 2020 00:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 08CA122FD5;
	Thu, 27 Aug 2020 00:50:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B7CF1BF9AF
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 00:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0AF6C8829B
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 00:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOuLihc2GMMk for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 00:50:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 19EEA88166
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 00:50:18 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id i13so1730417pjv.0
 for <devel@driverdev.osuosl.org>; Wed, 26 Aug 2020 17:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=01YFLAfnv3/LfrQ6AMD8+CvxGlBa3HTAm4LPxhm+Idg=;
 b=B+6UCaLJsBl1hMKapCRgSQ6Hwd2zFxjYus6Y15XT4Cy9iuC8ij/N26dD3haZb+kVkp
 Q13NM075KRBNz2OfKiS7OD00MMpazEN/zLVx3ipNB1BkhkPJIKpnB2ekxbJ9YebgcZzn
 ZuIJMANcMnPpHYPgx1iWWi06PvRjJwLWlFxCJsJyrfrZliFoc8lGJrG+kg4v+wa7QXJ8
 +p2eNUTfwZe3P43Gl0ThINYRBvwEhRpQzpB0PF9UUfob6rsAwrtKFKXDd0gfMzNb1Ojj
 YpiXAKz4EjEnaCAtbSC8Z+s6jdNhMVPFCNIavFy5HJEVDvWykUVfYwbEeriI85pTqCYQ
 YHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=01YFLAfnv3/LfrQ6AMD8+CvxGlBa3HTAm4LPxhm+Idg=;
 b=DiUMcZbS3JjUnBHTUx878RUS8qsj8FZKZKxWa2PO/ubzelTLD4T2bVGnhRy0zzRIOm
 GFB2fXsFNTqMn+sftNSYBee+c3UBuPaaMSs5N43cFEvawGJctURfLnfuI8G2ahATpifm
 XhhWu/XY3S8UA7ic1lsoItizFQPVUbhEXlbm/zkKWxk/yYGvSmG/aA6HRLWVV1RUgiW4
 dhgvrjUOST0fFfFcrs5dEYfYTBS5/w81fC1oiIONL/YiLPhERG1itLjGgftp++fTbA0p
 5OzpXO57+EYp4dA3oFCvMqPXxx6GeNtlcRQft9fIx2qV85EmYE4oBfq3U5ulvOZf9Z2T
 p3sw==
X-Gm-Message-State: AOAM531tnzrCs3801Gk5xhwzFYlVkoSQgBNQ7PpfvmMRqcu81sOdRsUO
 943ZrEsBkd1lU7J103U1xlc=
X-Google-Smtp-Source: ABdhPJyWvL6MEsyGNAUHVPFOU5eGcHfZh0/qeMDJL3X6V0nlT7oVAouiH6CJpFg5RGEU7VyhfouOeg==
X-Received: by 2002:a17:90a:c704:: with SMTP id
 o4mr8207536pjt.146.1598489417589; 
 Wed, 26 Aug 2020 17:50:17 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id z23sm209360pgv.57.2020.08.26.17.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 17:50:16 -0700 (PDT)
Date: Thu, 27 Aug 2020 09:50:10 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v2] staging: qlge: fix build breakage with dumping enabled
Message-ID: <20200827005010.GA46897@f3>
References: <20200826232735.104077-1-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826232735.104077-1-coiby.xu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjAyMC0wOC0yNyAwNzoyNyArMDgwMCwgQ29pYnkgWHUgd3JvdGU6Cj4gVGhpcyBmaXhlcyBj
b21taXQgMDEwNzYzNWUxNWFjCj4gKCJzdGFnaW5nOiBxbGdlOiByZXBsYWNlIHByX2VyciB3aXRo
IG5ldGRldl9lcnIiKSB3aGljaCBpbnRyb2R1Y2VkIGFuCj4gYnVpbGQgYnJlYWthZ2Ugb2YgbWlz
c2luZyBgc3RydWN0IHFsX2FkYXB0ZXIgKnFkZXZgIGZvciBzb21lIGZ1bmN0aW9ucwo+IGFuZCBh
IHdhcm5pbmcgb2YgdHlwZSBtaXNtYXRjaCB3aXRoIGR1bXBpbmcgZW5hYmxlZCwgaS5lLiwKPiAK
PiAkIG1ha2UgQ0ZMQUdTX01PRFVMRT0iUUxfQUxMX0RVTVA9MSBRTF9PQl9EVU1QPTEgUUxfQ0Jf
RFVNUD0xIFwKPiAgIFFMX0lCX0RVTVA9MSBRTF9SRUdfRFVNUD0xIFFMX0RFVl9EVU1QPTEiIE09
ZHJpdmVycy9zdGFnaW5nL3FsZ2UKPiAKPiBxbGdlX2RiZy5jOiBJbiBmdW5jdGlvbiDigJhxbF9k
dW1wX29iX21hY19yc3DigJk6Cj4gcWxnZV9kYmcuYzoyMDUxOjEzOiBlcnJvcjog4oCYcWRlduKA
mSB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDi
gJhjZGV24oCZPwo+ICAyMDUxIHwgIG5ldGRldl9lcnIocWRldi0+bmRldiwgIiVzXG4iLCBfX2Z1
bmNfXyk7Cj4gICAgICAgfCAgICAgICAgICAgICBefn5+Cj4gcWxnZV9kYmcuYzogSW4gZnVuY3Rp
b24g4oCYcWxfZHVtcF9yb3V0aW5nX2VudHJpZXPigJk6Cj4gcWxnZV9kYmcuYzoxNDM1OjEwOiB3
YXJuaW5nOiBmb3JtYXQg4oCYJXPigJkgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlIOKAmGNoYXIg
KuKAmSwgYnV0IGFyZ3VtZW50IDMgaGFzIHR5cGUg4oCYaW504oCZIFstV2Zvcm1hdD1dCj4gIDE0
MzUgfCAgICAgICAgIiVzOiBSb3V0aW5nIE1hc2sgJWQgPSAweCUuMDh4XG4iLAo+ICAgICAgIHwg
ICAgICAgICB+Xgo+ICAgICAgIHwgICAgICAgICAgfAo+ICAgICAgIHwgICAgICAgICAgY2hhciAq
Cj4gICAgICAgfCAgICAgICAgICVkCj4gIDE0MzYgfCAgICAgICAgaSwgdmFsdWUpOwo+ICAgICAg
IHwgICAgICAgIH4KPiAgICAgICB8ICAgICAgICB8Cj4gICAgICAgfCAgICAgICAgaW50Cj4gcWxn
ZV9kYmcuYzoxNDM1OjM3OiB3YXJuaW5nOiBmb3JtYXQg4oCYJXjigJkgZXhwZWN0cyBhIG1hdGNo
aW5nIOKAmHVuc2lnbmVkIGludOKAmSBhcmd1bWVudCBbLVdmb3JtYXQ9XQo+ICAxNDM1IHwgICAg
ICAgICIlczogUm91dGluZyBNYXNrICVkID0gMHglLjA4eFxuIiwKPiAgICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfn5+fl4KPiAgICAgICB8ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHVuc2lnbmVkIGludAo+IAo+IEZpeGVzOiAwMTA3NjM1ZTE1YWMgKCJzdGFnaW5n
OiBxbGdlOiByZXBsYWNlIHByX2VyciB3aXRoIG5ldGRldl9lcnIiKQo+IFJlcG9ydGVkLWJ5OiBC
ZW5qYW1pbiBQb2lyaWVyIDxiZW5qYW1pbi5wb2lyaWVyQGdtYWlsLmNvbT4KPiBTdWdnZXN0ZWQt
Ynk6IEJlbmphbWluIFBvaXJpZXIgPGJlbmphbWluLnBvaXJpZXJAZ21haWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IENvaWJ5IFh1IDxjb2lieS54dUBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
c3RhZ2luZy9xbGdlL3FsZ2UuaCAgICAgIHwgMjAgKysrKysrKysrKy0tLS0tLS0tLS0KPiAgZHJp
dmVycy9zdGFnaW5nL3FsZ2UvcWxnZV9kYmcuYyAgfCAyNCArKysrKysrKysrKysrKysrKystLS0t
LS0KPiAgZHJpdmVycy9zdGFnaW5nL3FsZ2UvcWxnZV9tYWluLmMgfCAgOCArKysrLS0tLQo+ICAz
IGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQo+IApbLi4u
XQo+IEBAIC0xNjMyLDYgKzE2MzUsOCBAQCB2b2lkIHFsX2R1bXBfd3FpY2Ioc3RydWN0IHdxaWNi
ICp3cWljYikKPiAKPiAgdm9pZCBxbF9kdW1wX3R4X3Jpbmcoc3RydWN0IHR4X3JpbmcgKnR4X3Jp
bmcpCj4gIHsKPiArCXN0cnVjdCBxbF9hZGFwdGVyICpxZGV2ID0gdHhfcmluZy0+cWRldjsKPiAr
Cj4gIAlpZiAoIXR4X3JpbmcpCj4gIAkJcmV0dXJuOwoKR2l2ZW4gdGhlIG51bGwgY2hlY2sgZm9y
IHR4X3JpbmcsIGl0IHNlZW1zIHVud2lzZSB0byBkZXJlZmVyZW5jZSB0eF9yaW5nCmJlZm9yZSB0
aGUgY2hlY2suCgpMb29raW5nIGF0IHFsX2R1bXBfYWxsKCksIEknbSBub3Qgc3VyZSB0aGF0IHRo
ZSBjaGVjayBpcyBuZWVkZWQgYXQgYWxsCnRob3VnaC4gTWF5YmUgaXQgc2hvdWxkIGJlIHJlbW92
ZWQuCgpTYW1lIHByb2JsZW0gaW4gcWxfZHVtcF9yeF9yaW5nKCkuCgo+ICAJbmV0ZGV2X2Vycihx
ZGV2LT5uZGV2LCAiPT09PT09PT09PT09PT09PT09PT09IER1bXBpbmcgdHhfcmluZyAlZCA9PT09
PT09PT09PT09PT1cbiIsCj4gQEAgLTE2NTcsNiArMTY2Miw4IEBAIHZvaWQgcWxfZHVtcF90eF9y
aW5nKHN0cnVjdCB0eF9yaW5nICp0eF9yaW5nKQo+ICB2b2lkIHFsX2R1bXBfcmljYihzdHJ1Y3Qg
cmljYiAqcmljYikKPiAgewo+ICAJaW50IGk7Cj4gKwlzdHJ1Y3QgcWxfYWRhcHRlciAqcWRldiA9
Cj4gKwkJY29udGFpbmVyX29mKHJpY2IsIHN0cnVjdCBxbF9hZGFwdGVyLCByaWNiKTsKCkhlcmUs
IGRhdmVtIHdvdWxkIHBvaW50IG91dCB0aGF0IHRoZSB2YXJpYWJsZXMgYXJlIG5vdCBkZWNsYXJl
ZCBpbgoicmV2ZXJzZSB4bWFzIHRyZWUiIG9yZGVyLgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
