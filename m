Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D852E1B9
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 17:54:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6456187EC9;
	Wed, 29 May 2019 15:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rYwAKd9-YH1h; Wed, 29 May 2019 15:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B9B6B87EA5;
	Wed, 29 May 2019 15:54:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54BBD1BF5D7
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 15:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4E30F87DCE
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 15:54:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2YH6neMSdVzj for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 15:54:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 19D898586F
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 15:54:24 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id o13so2996542lji.5
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 08:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=HZPIDMHhUw7CgfVQ/9XO5eI1+3TKH0K2oXJxQv63Hxo=;
 b=YLj+z14bB4aNZfVxxhFnzHr+IJ0pqDENed4opWRwB3klsdl+zcbbOsZ5Cz+kb8fF3n
 PYPoAbsciMmnBeh1o3ZEOzy622o6+WWvo1l6+xcYhEBGC1KG2jA+iDGAtAe504we8fuw
 NI4d8Ws93egDU5nhkdLg5rTL97Ryu8Ksl/k3zgW9NN6D3YHQJNY55kto8DGg1v5rTMPs
 KW+fDxM3R82Tcht78VcJ51Qfd3xt3w0ZzCmdzrym5zRrab0CHd81011koMd1G6XWAfkg
 bgzrtoGgdM0nT7faKI/0o9NmgTL1+KPxcF+4fi8bvJBLZfBnNCjJM5Dm96IbByxYodVl
 TLBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=HZPIDMHhUw7CgfVQ/9XO5eI1+3TKH0K2oXJxQv63Hxo=;
 b=Bzm39trLB4intseug7jPCVH82RhTh7KYWVuyiHkXYQAovOQgIirQtz3uFFBhAx0mC1
 TLM6JkbjYCeF9v2/o80dxumLfdr09R+LMRo3J7AauKvv7DVkvZ654p2YEyvF/eDfOuIh
 gMeInldxf3zcx5BrxE4Czo1GRVWTlZUuS3ZnnwgYHruL13vBx/D6hyKHCfqM0lgyxvE3
 F5XRRCs97B6HcQ6FYd3nnl/Mea+HKSRvgHSISiwzHIUG2IUD/tsHwrf+4vIfSlwRnhrY
 u0xEWiiGB70bU/JkYSsVPB5xwJbd2Ov/DBRXF/Ko9o6M/EsNkDRGpBoyYA9oErFb/fxd
 V/XQ==
X-Gm-Message-State: APjAAAU2DYl1qmeGwmYBgp8Gq7gRF3Lmzj9i2YdFrllaTsM4v0WVTMlQ
 6hEmMwSGuS2rRZVgtuncEbqvrQ==
X-Google-Smtp-Source: APXvYqxnp6Ve/wM1vnGRQlgI3iNH7KRfR+IK9dcQlN8Qua6EBlBLsRfVNuraPd66a2x2nieNPzMGWQ==
X-Received: by 2002:a2e:7001:: with SMTP id l1mr42358017ljc.11.1559145262588; 
 Wed, 29 May 2019 08:54:22 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id y127sm9462lff.34.2019.05.29.08.54.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 08:54:21 -0700 (PDT)
Date: Wed, 29 May 2019 17:54:19 +0200
From: Simon =?utf-8?Q?Sandstr=C3=B6m?= <simon@nikanor.nu>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 3/4] staging: kpc2000: add missing spaces in core.c
Message-ID: <20190529155419.ego3sfedew65ini5@dev.nikanor.nu>
References: <20190524110802.2953-1-simon@nikanor.nu>
 <20190524110802.2953-4-simon@nikanor.nu>
 <20190527073159.GX31203@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527073159.GX31203@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBNYXkgMjcsIDIwMTkgYXQgMTA6MzE6NTlBTSArMDMwMCwgRGFuIENhcnBlbnRlciB3
cm90ZToKPiBPbiBGcmksIE1heSAyNCwgMjAxOSBhdCAwMTowODowMVBNICswMjAwLCBTaW1vbiBT
YW5kc3Ryw7ZtIHdyb3RlOgo+ID4gWy4uXQo+ID4gLQkJcmV0ID0gY29weV90b191c2VyKCh2b2lk
Kilpb2N0bF9wYXJhbSwgKHZvaWQqKSZ0ZW1wLCBzaXplb2YodGVtcCkpOwo+ID4gKwkJcmV0ID0g
Y29weV90b191c2VyKCh2b2lkICopaW9jdGxfcGFyYW0sICh2b2lkICopJnRlbXAsIHNpemVvZih0
ZW1wKSk7Cj4gPiAgCQlpZiAocmV0KQo+ID4gIAkJCXJldHVybiAtRUZBVUxUOwo+IAo+IFRoaXMg
c2hvdWxkIHJlYWxseSBiZSB3cml0dGVuIGxpa2Ugc286Cj4gCj4gCQlpZiAoY29weV90b191c2Vy
KCh2b2lkIF9fdXNlciAqKWlvY3RsX3BhcmFtLCAmdGVtcCwKPiAJCQkJIHNpemVvZih0ZW1wKSkp
Cj4gCQkJcmV0dXJuIC1FRkFVTFQ7Cj4gCj4gdGVtcCBpcyByZWFsbHkgdGhlIHdyb25nIG5hbWUu
ICAidGVtcCIgaXMgZm9yIHRlbXBlcmF0dXJlcy4gICJ0bXAiIG1lYW5zCj4gdGVtcG9yYXJ5LiAg
QnV0IGFsc28gInRtcCIgaXMgd3JvbmcgaGVyZSBiZWNhdXNlIGl0J3Mgbm90IGEgdGVtcG9yYXJ5
Cj4gdmFyaWFibGUuICBJdCdzIGJldHRlciB0byBjYWxsIGl0ICJyZWdzIiBoZXJlLgo+IAo+IHJl
Z2FyZHMsCj4gZGFuIGNhcnBlbnRlcgo+IAoKSSBhZ3JlZSwgYnV0IEkgZG9uJ3QgdGhpbmsgaXQg
Zml0cyB3aXRoaW4gdGhpcyBwYXRjaC4gSSBjYW4gc2VuZCBhCnNlcGFyYXRlIHBhdGNoIHdpdGgg
dGhpcyBjaGFuZ2UuCgpUaGFua3MKCi0gU2ltb24KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
