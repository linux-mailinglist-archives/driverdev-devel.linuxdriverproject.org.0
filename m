Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE45920D078
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 19:44:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56068874BB;
	Mon, 29 Jun 2020 17:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 92GyXrLYu992; Mon, 29 Jun 2020 17:44:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 086B187446;
	Mon, 29 Jun 2020 17:44:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6E461BF34C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C34BF22624
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:44:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GoOXWfzOfbU2 for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 17:44:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 5C8D7203BF
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 17:44:03 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id g67so7734816pgc.8
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 10:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=zajKLFBWYvbR/dn70eWOQZrMNaJGoW21UItsytAj4Pg=;
 b=tUchiO1ZmHPcMUQ6nb6f+GBa4GwRs+UmAyEev+2pWA7R/2ylJcq4ZTXHOQeyLtbtKC
 7YJaKxcjh5GVMzls4Q0y2vp3h7D94xr91HPZHTYdn3HRQgzE3dF8791jm9A3v6tBOYqe
 WN40ApOIzVoFRQK49V44l03voWX+TUL36q1dDsY4yrM2g6KHfASEnDkSdp5miGCDrg3+
 PqVW30sWMvrXokrQORmke/VQMfqTpNs7Ifvm3EwToEa83E23Sy5TQACWtjB4RMpJgQPl
 5SmtFPk5qWymIYKBXzKyeUZl7u0NABgETrEC4t95CUwAH4Rcq+4JnrfPp4X4iM/CKla8
 k0ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zajKLFBWYvbR/dn70eWOQZrMNaJGoW21UItsytAj4Pg=;
 b=CVZ69qIsdIZsrNvtepO1sAYSRR9Iq9lKzpxXMR8Bbj2LQAEyzul1AJDJSLpxAUBMG4
 1s36YdCujXRbAiuxsJDc+lWRx0SV12fUdFLFN1sBCr8V/Z0P1PQBk1wRTj01EyKCR0hg
 n6ChE/6DnNyM8ERT9p77N5S/ufS+mzdAHZ8pPWUZfNVlUvPb1rNyZx5uAjlPX9Z0YAsB
 Ak8YLqojHDsWUnxYeTZcs/ElV9+jOel6EW/bnZ0n6DBYMSgcvlqfADD9nz65+hoBbGI1
 cpZbPoD7dSSDlk47FmQZy+v3/5dxAXZgmGyeOS/+ZeHV4sx9e4chvGu2VWzzOCrK4t6W
 vqIw==
X-Gm-Message-State: AOAM532g3I/3mUkU5TLlv4hWl/yu+OrrLsjI65kFCElm88MIuDSTugrk
 LnwPYGE0QRSR5BIY+Fue/r0=
X-Google-Smtp-Source: ABdhPJzBcLLzwLTBp+SADDEiJRBUHsSxdEdo7/SpaPcZ8T2RJtU5PzmMtmzfSCa+VgpSvypvEpCRVA==
X-Received: by 2002:a63:d74c:: with SMTP id w12mr11600066pgi.260.1593452642988; 
 Mon, 29 Jun 2020 10:44:02 -0700 (PDT)
Received: from localhost ([160.16.113.140])
 by smtp.gmail.com with ESMTPSA id j2sm202778pjf.4.2020.06.29.10.44.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 10:44:02 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Tue, 30 Jun 2020 01:43:52 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v2 4/4] staging: qlge: replace pr_err with netdev_err
Message-ID: <20200629174352.euw4lckze2k7xtbm@Rk>
References: <20200627145857.15926-1-coiby.xu@gmail.com>
 <20200627145857.15926-5-coiby.xu@gmail.com>
 <20200629053004.GA6165@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200629053004.GA6165@f3>
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
 gregkh@linuxfoundation.org, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 joe@perches.com, dan.carpenter@oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBKdW4gMjksIDIwMjAgYXQgMDI6MzA6MDRQTSArMDkwMCwgQmVuamFtaW4gUG9pcmll
ciB3cm90ZToKPk9uIDIwMjAtMDYtMjcgMjI6NTggKzA4MDAsIENvaWJ5IFh1IHdyb3RlOgo+Wy4u
Ll0KPj4gIHZvaWQgcWxfZHVtcF9xZGV2KHN0cnVjdCBxbF9hZGFwdGVyICpxZGV2KQo+PiAgewo+
PiBAQCAtMTYxMSw5OSArMTYxOCwxMDAgQEAgdm9pZCBxbF9kdW1wX3FkZXYoc3RydWN0IHFsX2Fk
YXB0ZXIgKnFkZXYpCj4+ICAjaWZkZWYgUUxfQ0JfRFVNUAo+PiAgdm9pZCBxbF9kdW1wX3dxaWNi
KHN0cnVjdCB3cWljYiAqd3FpY2IpCj4+ICB7Cj4+IC0JcHJfZXJyKCJEdW1waW5nIHdxaWNiIHN0
dWZmLi4uXG4iKTsKPj4gLQlwcl9lcnIoIndxaWNiLT5sZW4gPSAweCV4XG4iLCBsZTE2X3RvX2Nw
dSh3cWljYi0+bGVuKSk7Cj4+IC0JcHJfZXJyKCJ3cWljYi0+ZmxhZ3MgPSAleFxuIiwgbGUxNl90
b19jcHUod3FpY2ItPmZsYWdzKSk7Cj4+IC0JcHJfZXJyKCJ3cWljYi0+Y3FfaWRfcnNzID0gJWRc
biIsCj4+IC0JICAgICAgIGxlMTZfdG9fY3B1KHdxaWNiLT5jcV9pZF9yc3MpKTsKPj4gLQlwcl9l
cnIoIndxaWNiLT5yaWQgPSAweCV4XG4iLCBsZTE2X3RvX2NwdSh3cWljYi0+cmlkKSk7Cj4+IC0J
cHJfZXJyKCJ3cWljYi0+d3FfYWRkciA9IDB4JWxseFxuIiwKPj4gLQkgICAgICAgKHVuc2lnbmVk
IGxvbmcgbG9uZylsZTY0X3RvX2NwdSh3cWljYi0+YWRkcikpOwo+PiAtCXByX2Vycigid3FpY2It
PndxX2Nuc21yX2lkeF9hZGRyID0gMHglbGx4XG4iLAo+PiAtCSAgICAgICAodW5zaWduZWQgbG9u
ZyBsb25nKWxlNjRfdG9fY3B1KHdxaWNiLT5jbnNtcl9pZHhfYWRkcikpOwo+PiArCW5ldGRldl9l
cnIocWRldi0+bmRldiwgIkR1bXBpbmcgd3FpY2Igc3R1ZmYuLi5cbiIpOwo+Cj5kcml2ZXJzL3N0
YWdpbmcvcWxnZS9xbGdlX2RiZy5jOjE2MjE6MTM6IGVycm9yOiDigJhxZGV24oCZIHVuZGVjbGFy
ZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmGNkZXbigJk/
Cj4gMTYyMSB8ICBuZXRkZXZfZXJyKHFkZXYtPm5kZXYsICJEdW1waW5nIHdxaWNiIHN0dWZmLi4u
XG4iKTsKPiAgICAgIHwgICAgICAgICAgICAgXn5+fgo+ICAgICAgfCAgICAgICAgICAgICBjZGV2
Cj4KPlsuLi5dCj5hbmQgbWFueSBtb3JlIGxpa2UgdGhhdAo+Cj5Bbnl3YXlzLCBxbGdlX2RiZy5o
IGlzIGEgZHVtcHN0ZXIuIEl0IGhhcyBodW5kcmVkcyBvZiBsaW5lcyBvZiBjb2RlCj5iaXRyb3R0
aW5nIGF3YXkgaW4gaWZkZWYgbGFuZC4gU2VlIHRoaXMgY29tbWVudCBmcm9tIERhdmlkIE1pbGxl
ciBvbiB0aGUKPnRvcGljIG9mIGlmZGVmJ2VkIGRlYnVnZ2luZyBjb2RlOgo+aHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjAwMzAzLjE0NTkxNi4xNTA2MDY2NTEwOTI4MDIwMTkzLmRh
dmVtQGRhdmVtbG9mdC5uZXQvCgpUaGFuayB5b3UgZm9yIHNwb3R0aW5nIHRoaXMgcHJvYmxlbSEg
VGhpcyBpc3N1ZSBjb3VsZCBiZSBmaXhlZCBieQpwYXNzaW5nIHFkZXYgdG8gcWxfZHVtcF93cWlj
Yi4gT3IgYXJlIHlvdSBzdWdnZXN0aW5nIHdlIGNvbXBsZXRlbHkKcmVtb3ZlIHFsZ2VfZGJnIHNp
bmNlIGl0J3Mgb25seSBmb3IgdGhlIHB1cnBvc2Ugb2YgZGVidWdnaW5nIHRoZSBkcml2ZXIKYnkg
dGhlIGRldmVsb3Blcj8KCkJ0dywgSSdtIGN1cmlvdXMgaG93IHlvdSBtYWtlIHRoaXMgY29tcGls
aW5nIGVycm9yIG9jY3VyLiBEbyB5b3UgbWFudWFsbHkgdHJpZ2dlcgppdCB2aWEgIlFMX0NCX0RV
TVA9MSBtYWtlIE09ZHJpdmVycy9zdGFnaW5nL3FsZ2UiIG9yIHVzZSBzb21lIGF1dG9tYXRlCnRv
b2xzPwoKLS0KQmVzdCByZWdhcmRzLApDb2lieQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
