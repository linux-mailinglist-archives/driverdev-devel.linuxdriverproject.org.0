Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAABED934B
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 16:04:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF94A8112C;
	Wed, 16 Oct 2019 14:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hu+cZIgFloLq; Wed, 16 Oct 2019 14:04:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0191C877A5;
	Wed, 16 Oct 2019 14:03:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 07E971BF2AA
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 14:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0441286992
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 14:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yaj0kZaLEAAN for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 14:03:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3B8D18698D
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 14:03:57 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id p14so28205951wro.4
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 07:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=UkCPOkyDARfo8k/pBvvcA0h9m0lAAi+VfYgojWm4kgk=;
 b=cY9dsuzoAPwxU/XF5YOyYMjat23Qun9g3x6ILdtSx/ggQRqIePmLDkjzG2p5jnu/K2
 8E1+2ITKF3H/fb7zzkOun+aQOQ0hhp94nirrHcqfEuc/HjDynTAHWZpgePCE2K1OZMfs
 pjfc9gfZIvlmAKztRuOpcLCtda7izI0fM9fWl2oJlxCnKhV+kSNYJlU3gVDyh65z781h
 1Cg5vWoK9PxSRedm1NUZ9it8nmzgzziT3YRqK7fp6bM6hn3bnxpeQA5hgmmxmb7u4te/
 60PH4xXqvpKLPy3o8g7wNFCMhWNDKXG3yVULIqqwRVOr4ZMY8gmr/nhu6mrWaVoM2Y8M
 4YyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=UkCPOkyDARfo8k/pBvvcA0h9m0lAAi+VfYgojWm4kgk=;
 b=QvntFiJbYbJWHMOxYMFi55sRYQru+s9wErZ9YZ7FALNoiU/BKVEegDaaeAwPrTWkW3
 T/fzrmLWtLwHhFuD4nKYJLT6+uM+r1BWQeOARCeSR3SS3Q/IBRsSMSP7PDbu1BuH+/rF
 z68Ixrj8nGu+N+dU9kCgGjNyvZ1Hz3856+JVhTz0g7vhonQp1O0dyDhdNjNfv9UjpnCo
 1As6f8pqoWIBka4lCtKLBn8mQk5907q43ROeAKUeissRQRLdezKdOHBNFlBXmCAt5Xej
 m1PY+28HkVQNQI/IVCwy2exAqmt8nUn0VIqOSizJmUl43jBHzf8Zh9AHE8Wm4fVgaiTy
 a7Cg==
X-Gm-Message-State: APjAAAWT6al5E53l+NpH4JXltdsQXP520lpp76QciWhgdnbhN1PexXqu
 oSpY58ej2JYkFajtP0891Vw=
X-Google-Smtp-Source: APXvYqwVB1pZhXJU7zyV30yowyh/v7HB68SaAJm2+nDZiRFa1Y5kqu3QvOa4SMlU88KEt9f6U3tzHw==
X-Received: by 2002:adf:ecd0:: with SMTP id s16mr2842961wro.65.1571234635696; 
 Wed, 16 Oct 2019 07:03:55 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id r27sm67512626wrc.55.2019.10.16.07.03.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 07:03:54 -0700 (PDT)
Date: Wed, 16 Oct 2019 16:03:53 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20191016140353.4hrncxa5wkx47oau@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830075647.wvhrx4asnkrfkkwk@pali>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpZGF5IDMwIEF1Z3VzdCAyMDE5IDA5OjU2OjQ3IFBhbGkgUm9ow6FyIHdyb3RlOgo+IE9u
IFRodXJzZGF5IDI5IEF1Z3VzdCAyMDE5IDE5OjM1OjA2IFNhc2hhIExldmluIHdyb3RlOgo+ID4g
V2l0aCByZWdhcmRzIHRvIG1pc3Npbmcgc3BlY3MvZG9jcy93aGF0ZXZlciAtIG91ciBtYWluIGNv
bmNlcm4gd2l0aCB0aGlzCj4gPiByZWxlYXNlIHdhcyB0aGF0IHdlIHdhbnQgZnVsbCBpbnRlcm9w
ZXJhYmlsaXR5LCB3aGljaCBpcyB3aHkgdGhlIHNwZWMKPiA+IHdhcyBtYWRlIHB1YmxpYyBhcy1p
cyB3aXRob3V0IG1vZGlmaWNhdGlvbnMgZnJvbSB3aGF0IHdhcyB1c2VkCj4gPiBpbnRlcm5hbGx5
LiBUaGVyZSdzIG5vICJzZWNyZXQgc2F1Y2UiIHRoYXQgTWljcm9zb2Z0IGlzIGhpZGluZyBoZXJl
Lgo+IAo+IE9rLCBpZiBpdCB3YXMganVzdCBkcm9wIG9mICJjdXJyZW50IHZlcnNpb24iIG9mIGRv
Y3VtZW50YXRpb24gdGhlbiBpdAo+IG1ha2VzIHNlbnNlLgo+IAo+ID4gSG93IGFib3V0IHdlIGdp
dmUgdGhpcyBzcGVjL2NvZGUgdGltZSB0byBnZXQgc29ha2VkIGFuZCByZXZpZXdlZCBmb3IgYQo+
ID4gYml0LCBhbmQgaWYgZm9sa3Mgc3RpbGwgZmVlbCAoaW4gYSBtb250aCBvciBzbz8pIHRoYXQg
dGhlcmUgYXJlIG1pc3NpbmcKPiA+IGJpdHMgb2YgaW5mb3JtYXRpb24gcmVsYXRlZCB0byBleGZh
dCwgSSdsbCBiZSBoYXBweSB0byBnbyBiYWNrIGFuZCB0cnkKPiA+IHRvIGdldCB0aGVtIG91dCBh
cyB3ZWxsLgoKSGVsbG8gU2FzaGEhCgpOb3cgb25lIG1vbnRoIHBhc3NlZCwgc28gZG8geW91IGhh
dmUgc29tZSBpbmZvcm1hdGlvbiB3aGVuIG1pc3NpbmcgcGFydHMKb2YgZG9jdW1lbnRhdGlvbiBs
aWtlIFRleEZBVCB3b3VsZCBiZSByZWxlYXNlZCB0byBwdWJsaWM/Cgo+IEJhc2ljYWxseSBleHRl
cm5hbCByZWZlcmVuY2VzIGluIHRoYXQgcmVsZWFzZWQgZXhGQVQgc3BlY2lmaWNhdGlvbiBhcmUK
PiB1bmtub3duIC8gbm90IHJlbGVhc2VkIHlldC4gTGlrZSBUZXhGQVQuIFNvIGlmIHlvdSBoYXZl
IGFuIGlucHV0IGluIE1TCj4gY291bGQgeW91IGZvcndhcmQgcmVxdWVzdCBhYm91dCB0aGVzZSBt
aXNzaW5nIGJpdHM/CgotLSAKUGFsaSBSb2jDoXIKcGFsaS5yb2hhckBnbWFpbC5jb20KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
