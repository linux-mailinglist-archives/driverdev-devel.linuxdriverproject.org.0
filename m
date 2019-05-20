Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6882423079
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 11:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5DC502287D;
	Mon, 20 May 2019 09:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5FEn7qfk6Piq; Mon, 20 May 2019 09:36:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6652522721;
	Mon, 20 May 2019 09:36:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD8021BF31E
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 09:36:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B81AD87152
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 09:36:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wERxHj5qTMDP for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 09:36:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EC3CD86DA3
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 09:36:49 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id f4so9486170oib.4
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 02:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AZBDC+/mCFRo3qw+a99U/avIYwiJEL/Csf0BsRkNo7k=;
 b=G1evNGX580CvL1Bg9yjWgDSUqgqFd18SsqtZARCMpgDaW1aknB3f1KfTra3Hq62ZJC
 eHzW+oLbXj5JpRSoAT7+0M1lb2KjhBfpwMmx5ti/FC+6fE14Eu61/cylCQl9zyq25i7h
 Qj1zDQFJshUfwvtOyHaZ1vXbjDY0/b7R1wIMjUoT9zPx8C3W6+e8WI514mr2PmGyJ8ya
 T9fPzt4NcM3iScE/V6QSFx9oLnTxmikU8AANHq2DJqXH82sTz6udC/rZ+4xFHK0/wVXs
 D15F79EQbLUfdR+OOK0lhnX2oOh+F/Ix3zL3SJcJsi4uNqLw2xcDe7ZwQ27ne+KpIxw5
 REVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AZBDC+/mCFRo3qw+a99U/avIYwiJEL/Csf0BsRkNo7k=;
 b=nNrYdDoHNUWDhPVEtyHDnyucu40yCcjaYTTO8PVHmjlwOzAqu77kotFeHd4IlrRbnL
 Arjr2XzCsnv1BWuHG+hIS3VN0M5c/pTd5B3NAiUAKHw4l+M8pUOkMTeSPAxsc7gx2TTn
 DDHAmvKoPJQPw8ANcGyn+NWfNobk6trS/G75ApEb77oa6ouDNspWNOv1A2UTraWuKRW0
 VPZqGy8CV0dX3ashV1y4ElYJ5GSTItXiS5UX8vGsDpzbNIeuCw7GFd9EumawcoxUHAOK
 AukJmz0wottDofriL9P814EczL2gGRZJKre6FgX2g3BUGnz6CSrUZFp/B5QwP4Iksiw1
 TEXg==
X-Gm-Message-State: APjAAAV7VsVsCZmL99NPmsTeNuWlHJ461jYVQygY36+lwi0371aEZl29
 6gRIe3waYvgFGOIm/c2d4gpgsIu8y5gNpFdWtYNknHmjN78=
X-Google-Smtp-Source: APXvYqyuKbNFJw8EKBMqbxucAuXTt5WEc0gs5Vo/FU3lCWpjMCU6PTXubunFnLlGtFewQE9Cfa3pVvpqD/hAgm+NiuM=
X-Received: by 2002:aca:4341:: with SMTP id q62mr17730671oia.140.1558345009093; 
 Mon, 20 May 2019 02:36:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190518224333.18067-1-barbara.fernandes@usp.br>
 <20190519114400.5cc29c77@archlinux>
In-Reply-To: <20190519114400.5cc29c77@archlinux>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Mon, 20 May 2019 12:36:37 +0300
Message-ID: <CA+U=Dsqir6Qyk_8yaBw1ei2dhR_TFmVWiMp6qsAOL4yL+nO7AA@mail.gmail.com>
Subject: Re: [RESEND PATCH] staging: iio: adt7316: create of_device_id array
To: Jonathan Cameron <jic23@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Wilson Sales <spoonm@spoonm.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 =?UTF-8?Q?B=C3=A1rbara_Fernandes?= <barbara.fernandes@usp.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU3VuLCBNYXkgMTksIDIwMTkgYXQgODo1NCBQTSBKb25hdGhhbiBDYW1lcm9uIDxqaWMyM0Br
ZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIFNhdCwgMTggTWF5IDIwMTkgMTk6NDM6MzMgLTAzMDAK
PiBCw6FyYmFyYSBGZXJuYW5kZXMgPGJhcmJhcmEuZmVybmFuZGVzQHVzcC5icj4gd3JvdGU6Cj4K
PiA+IENyZWF0ZSBzdHJ1Y3R1cmUgb2YgdHlwZSBvZl9kZXZpY2VfaWQgaW4gb3JkZXIgdG8gcmVn
aXN0ZXIgYWxsIGRldmljZXMKPiA+IHRoZSBkcml2ZXIgaXMgYWJsZSB0byBtYW5hZ2UuCj4gPgo+
ID4gU2lnbmVkLW9mZi1ieTogQsOhcmJhcmEgRmVybmFuZGVzIDxiYXJiYXJhLmZlcm5hbmRlc0B1
c3AuYnI+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBXaWxzb24gU2FsZXMgPHNwb29ubUBzcG9vbm0ub3Jn
Pgo+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBXaWxzb24gU2FsZXMgPHNwb29ubUBzcG9vbm0ub3JnPgo+
IExvb2tzIGdvb2QgdG8gbWUuCj4KPiBBcHBsaWVkIHRvIHRoZSB0b2dyZWcgYnJhbmNoIG9mIGlp
by5naXQgYW5kIHB1c2hlZCBvdXQgYXMgdGVzdGluZwo+IGZvciB0aGUgYXV0b2J1aWxkZXJzIHRv
IHBsYXkgd2l0aCBpdC4KPgo+IFRoYW5rcywKCkFsc28sCgpBY2tlZC1ieTogQWxleGFuZHJ1IEFy
ZGVsZWFuIDxhbGV4YW5kcnUuYXJkZWxlYW5AYW5hbG9nLmNvbT4KCkNDLWluZyBteSB3b3JrLWVt
YWlsClRoZXJlIGFyZSBzb21lIGlzc3VlcyB3aXRoIGl0IGFuZCBtYWlsaW5nIGxpc3RzOyBJJ2xs
IGhvcGVmdWxseSBzb3J0CnRoZW0gb3V0IGluIHRoZSBuZXh0IHdlZWtzLgoKCj4KPiBKb25hdGhh
bgo+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3N0YWdpbmcvaWlvL2FkZGFjL2FkdDczMTYtc3BpLmMg
fCAxMyArKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2lpby9hZGRhYy9hZHQ3MzE2LXNw
aS5jIGIvZHJpdmVycy9zdGFnaW5nL2lpby9hZGRhYy9hZHQ3MzE2LXNwaS5jCj4gPiBpbmRleCA4
Mjk0YjljMWUzYzIuLjk5Njg3NzVmMWQyMyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy9paW8vYWRkYWMvYWR0NzMxNi1zcGkuYwo+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL2lpby9h
ZGRhYy9hZHQ3MzE2LXNwaS5jCj4gPiBAQCAtMTI3LDkgKzEyNywyMiBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IHNwaV9kZXZpY2VfaWQgYWR0NzMxNl9zcGlfaWRbXSA9IHsKPiA+Cj4gPiAgTU9EVUxF
X0RFVklDRV9UQUJMRShzcGksIGFkdDczMTZfc3BpX2lkKTsKPiA+Cj4gPiArc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgYWR0NzMxNl9vZl9zcGlfbWF0Y2hbXSA9IHsKPiA+ICsgICAg
IHsgLmNvbXBhdGlibGUgPSAiYWRpLGFkdDczMTYiIH0sCj4gPiArICAgICB7IC5jb21wYXRpYmxl
ID0gImFkaSxhZHQ3MzE3IiB9LAo+ID4gKyAgICAgeyAuY29tcGF0aWJsZSA9ICJhZGksYWR0NzMx
OCIgfSwKPiA+ICsgICAgIHsgLmNvbXBhdGlibGUgPSAiYWRpLGFkdDc1MTYiIH0sCj4gPiArICAg
ICB7IC5jb21wYXRpYmxlID0gImFkaSxhZHQ3NTE3IiB9LAo+ID4gKyAgICAgeyAuY29tcGF0aWJs
ZSA9ICJhZGksYWR0NzUxOSIgfSwKPiA+ICsgICAgIHsgfQo+ID4gK307Cj4gPiArCj4gPiArTU9E
VUxFX0RFVklDRV9UQUJMRShvZiwgYWR0NzMxNl9vZl9zcGlfbWF0Y2gpOwo+ID4gKwo+ID4gIHN0
YXRpYyBzdHJ1Y3Qgc3BpX2RyaXZlciBhZHQ3MzE2X2RyaXZlciA9IHsKPiA+ICAgICAgIC5kcml2
ZXIgPSB7Cj4gPiAgICAgICAgICAgICAgIC5uYW1lID0gImFkdDczMTYiLAo+ID4gKyAgICAgICAg
ICAgICAub2ZfbWF0Y2hfdGFibGUgPSBhZHQ3MzE2X29mX3NwaV9tYXRjaCwKPiA+ICAgICAgICAg
ICAgICAgLnBtID0gQURUNzMxNl9QTV9PUFMsCj4gPiAgICAgICB9LAo+ID4gICAgICAgLnByb2Jl
ID0gYWR0NzMxNl9zcGlfcHJvYmUsCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
