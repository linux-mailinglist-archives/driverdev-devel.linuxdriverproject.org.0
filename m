Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C75CD1A63C2
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 09:34:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 877542001F;
	Mon, 13 Apr 2020 07:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id knDzyMT3O2dM; Mon, 13 Apr 2020 07:34:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9469A2001C;
	Mon, 13 Apr 2020 07:34:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 349A71BF284
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 07:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FC2D8734E
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 07:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QaXkWpqOoT2Z for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 07:34:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B10D186258
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 07:34:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5CFE2073E;
 Mon, 13 Apr 2020 07:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586763252;
 bh=H+IBjRXlom1TFxVLGFhtyKNUQs9twEnHqO5GU21vrGk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=USimkyWjOQlsc3yQZ8z+4g/qhYbZetmADpwZrDpDmlDno6uNrcgFdWN8rw5xS9LXD
 SQEZTQyAnKdsXyUQuTiwf3cR77+mgebwVCW5iIMzTdXwNW/L5vbBPZZcR7fdRmbbn9
 CzM/lmSYZG6nzdAjhj+7P//Jgr5ujA2a5kqtr7z8=
Date: Sun, 12 Apr 2020 09:46:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] binderfs: Fix binderfs.c selftest compilation warning
Message-ID: <20200412074629.GB2707594@kroah.com>
References: <20200411145151.5576-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411145151.5576-1-tangbin@cmss.chinamobile.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBBcHIgMTEsIDIwMjAgYXQgMTA6NTE6NTFQTSArMDgwMCwgVGFuZyBCaW4gd3JvdGU6
Cj4gRml4IG1pc3NpbmcgYnJhY2VzIGNvbXBpbGF0aW9uIHdhcm5pbmcgaW4gdGhlIEFSTQo+IGNv
bXBpbGVyIGVudmlyb25tZW50Ogo+ICAgICBkcml2ZXJzL2FuZHJvaWQvYmluZGVyZnMuYzogSW4g
ZnVuY3Rpb24gJ2JpbmRlcmZzX2ZpbGxfc3VwZXInOgo+ICAgICBkcml2ZXJzL2FuZHJvaWQvYmlu
ZGVyZnMuYzo2NTA6OTogd2FybmluZzogbWlzc2luZyBicmFjZXMgYXJvdW5kIGluaXRpYWxpemVy
IFstV21pc3NpbmctYnJhY2VzXQo+ICAgICAgIHN0cnVjdCBiaW5kZXJmc19kZXZpY2UgZGV2aWNl
X2luZm8gPSB7IDAgfTsKPiAgICAgZHJpdmVycy9hbmRyb2lkL2JpbmRlcmZzLmM6NjUwOjk6IHdh
cm5pbmc6IChuZWFyIGluaXRpYWxpemF0aW9uIGZvciDigJhkZXZpY2VfaW5mby5uYW1l4oCZKSBb
LVdtaXNzaW5nLWJyYWNlc10KCldoYXQgY29tcGlsZXIgYW5kIHZlcnNpb24gaXMgZ2l2aW5nIHRo
aXMgd2FybmluZz8gIEl0J3Mgb2RkIHdlIGhhdmUgbm90CnNlZW4gdGhpcyB5ZXQuLi4KCnRoYW5r
cywKCmdyZWcgay1oCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
