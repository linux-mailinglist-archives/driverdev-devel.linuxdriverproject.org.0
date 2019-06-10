Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D19AD3AF6E
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:20:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22C8285764;
	Mon, 10 Jun 2019 07:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DDzrRQU-fuds; Mon, 10 Jun 2019 07:20:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1B4185108;
	Mon, 10 Jun 2019 07:20:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA7AF1BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C7DD9854C9
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FaXjt5GL8gUj for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:20:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 296D085108
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:20:13 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id a21so6915561ljh.7
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=QbPinONeSAhxrcz+ROsSQJ+J9qK6AUeYBThX16lOVD0=;
 b=sMMIZzwmKrUmXgEHG/Gl7m8V3sJQ7hD1fFxlCutQz7ydVzDczsd6kgR1lLZyhT+1Dr
 ePFyuwyeMeoqF4Q+bj1hLZlBkPgKl6z7YxtTN57zkBPxNtDWoLl9tfi8JD385eXVFJke
 qeI+g07ICtRv9z2HFoLec0ccMWpYXybUvoyt31T+D6uY+Bzrf+FpcuyFhs2K7SGY/rIW
 WXpobojMTjs/4FcT3dJ+eHHMq4naSvHTuzaYn91lo2h3n6yvIX3khpebwdoFGx9Lscwy
 v9bwlPUxeqt6a0dY0Fy8tiYkf5SnnfCimn6AXkZvwawEGzJR4v6vjPiPmeRk/7U0X80m
 4A7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=QbPinONeSAhxrcz+ROsSQJ+J9qK6AUeYBThX16lOVD0=;
 b=Wq7OidHDiLi0lF2swpYF2gv6rAOabHDo9BAEGn2XUnK4j0SKrAagngmrr0z/IBYGpP
 n+vGFqjUgi5e6bpqr6+7maquAJmmDwYfONKs76d7QDPUfxxGCV5egdvE6sy4WEP1t/Nm
 IQFeLJ2qo3Ar5M6Dk2fxaWFSM32k/oF+XfbKHd+jP33fnQ0m9SNIajgcMLutBv5QIQnc
 wp1i+5jy/YG61HwLTE5LKLX1845qIdVg1ATavXgawtTXSIV/b1fCf+fgRIWA7zKFy/0/
 zE0NS0oV3gWJDSx9xflJfcBLYcn7hNcchtha/Wzk4rK3rTO+DIqgOedS+zXmfKIiN2rY
 4VJA==
X-Gm-Message-State: APjAAAVD6wpse47G5RM3pNFF3Txu+sndb0atRHa2dcBnWskzgjhZhANo
 s6xeaGrVhVa6jKGtoKe4psnfQA==
X-Google-Smtp-Source: APXvYqxM53NwgY80Ho7rdzPBsz/YjknnZAPhNXJ3Ym+JtdWVnCyuO4S3WoSBq1sAarpMkjaiJmiZvw==
X-Received: by 2002:a2e:6109:: with SMTP id v9mr35873723ljb.205.1560151211494; 
 Mon, 10 Jun 2019 00:20:11 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id p27sm1842051lfo.16.2019.06.10.00.20.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:20:10 -0700 (PDT)
Date: Mon, 10 Jun 2019 09:20:09 +0200
From: Simon =?utf-8?Q?Sandstr=C3=B6m?= <simon@nikanor.nu>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 4/7] staging: kpc2000: use __func__ in debug messages in
 core.c
Message-ID: <20190610072009.w5scsjb2aqcxm2l2@dev.nikanor.nu>
References: <20190603222916.20698-1-simon@nikanor.nu>
 <20190603222916.20698-5-simon@nikanor.nu>
 <20190606125550.GA11929@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606125550.GA11929@kroah.com>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMDYvMDYsIEdyZWcgS0ggd3JvdGU6Cj4gT24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMTI6Mjk6
MTNBTSArMDIwMCwgU2ltb24gU2FuZHN0csO2bSB3cm90ZToKPiA+ICAKPiA+IC0JZGV2X2RiZygm
cGRldi0+ZGV2LCAia3AyMDAwX3BjaWVfcHJvYmUocGRldiA9IFslcF0sIGlkID0gWyVwXSlcbiIs
Cj4gPiAtCQlwZGV2LCBpZCk7Cj4gPiArCWRldl9kYmcoJnBkZXYtPmRldiwgIiVzKHBkZXYgPSBb
JXBdLCBpZCA9IFslcF0pXG4iLAo+ID4gKwkJX19mdW5jX18sIHBkZXYsIGlkKTsKPiAKPiBkZWJ1
Z2dpbmcgbGluZXMgdGhhdCBzYXkgImNhbGxlZCB0aGlzIGZ1bmN0aW9uISIgY2FuIGFsbCBiZSBy
ZW1vdmVkLCBhcwo+IHdlIGhhdmUgZnRyYWNlIGluIHRoZSBrZXJuZWwgdHJlZSwgd2UgY2FuIHVz
ZSB0aGF0IGluc3RlYWQuICBJJ2xsIHRha2UKPiB0aGlzLCBidXQgZmVlbCBmcmVlIHRvIGNsZWFu
IHRoZW0gdXAgYXMgZm9sbG93LW9uIHBhdGNoZXMuCj4gCj4gdGhhbmtzLAo+IAo+IGdyZWcgay1o
CgpDYW4gdGhleSBiZSByZW1vdmVkIGV2ZW4gaWYgdGhleSBwcmludCBmdW5jdGlvbiBhcmd1bWVu
dHMgb3Igb3RoZXIKdmFyaWFibGVzPwoKLSBTaW1vbgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
