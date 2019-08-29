Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AB5A19BB
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 14:14:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61CB489233;
	Thu, 29 Aug 2019 12:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YXbDLi9ns96e; Thu, 29 Aug 2019 12:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D12F388871;
	Thu, 29 Aug 2019 12:14:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC2221BF380
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 12:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B946B8887B
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 12:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVQQfu7hxs91 for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 12:14:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1914F88800
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 12:14:43 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id g7so3210429wrx.2
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 05:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=g6fQr58D2A40FvH0simm71xGSDIeFGyQZqgWXUgFWVY=;
 b=EKVBjDVW9RSSsuGVKwJg9XdPQZP3nPqNBLIQbnweHiW1qdsbbBVQ2EwIIeCP/YjkhQ
 b0ZQXKZkbwR1G+h1ftlcav7i6dOdTJ+fsBgzJOv2v1rYER9jkeXwyi3vpL1W5cvK6cmA
 rTJPfJOxCUJpcpH2xtnKDbOpdrBqrmITUvvknvxgLadPa83a4NQIfqUWb7zkwJVFUZtP
 CO6qDp1zaJsRkIHN3VQVgUCnA2mwrhs2FoAsyOZ30f+ubYdw86Wwk+aAXr0auKdJhAg4
 oKWP3owdsXOgRZJFoxQLRJTBcqZUKu6RDU1RsjkUF3gODKy4YBJy7c6zyaHnXWEs43Hx
 VARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=g6fQr58D2A40FvH0simm71xGSDIeFGyQZqgWXUgFWVY=;
 b=JlTbaCG/i01YmiWEONtGwsrws5j4HPKlTHSj6Bznx/QgUPJQ2Ze6FGg8UVPxuyZLJI
 RM5jY/ZdJ23pi1DY2s+beckLppV7bTOzh34rnZ4mWThvYTknoEzpATIIDynjOC32Ge96
 YoEv6xq+nzqvSgzuJPh6LlHIdg+5vNP/ZKYwL1EP8X0V+wZLg1zXaB/ziwXqif9D2ECB
 1uMwJCP1EuJFYLzz2D3EAlLbps5ZQOuzzUqCoeY0mEmFeBcd8PigxTwiJopkKz9f3ouP
 ox4CVE3DFmmt8jMn2LCnwgLCXr7eODJuw46xil8F+W5FBi/TPgO0O4YpE5mtV7Esbbuq
 yC5g==
X-Gm-Message-State: APjAAAWzV3goRbi620vtjnxGmA08N2gHPLrodyfYivt301Gdf78UaSy8
 Whv7RVFPn8SKsFmtDmwN2iU=
X-Google-Smtp-Source: APXvYqx+hSZNfO2MPixBonI1vY368TbshRm/+4s8x1yBJDMvdY3MjoTuP2w/gjxF09XVXNJXgtPXjA==
X-Received: by 2002:adf:e286:: with SMTP id v6mr10673358wri.4.1567080881576;
 Thu, 29 Aug 2019 05:14:41 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id z25sm2843048wml.5.2019.08.29.05.14.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 05:14:40 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:14:35 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829121435.bsl5cnx7yqgakpgb@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828160817.6250-1-gregkh@linuxfoundation.org>
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
 linux-kernel@vger.kernel.org, Sasha Levin <alexander.levin@microsoft.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkbmVzZGF5IDI4IEF1Z3VzdCAyMDE5IDE4OjA4OjE3IEdyZWcgS3JvYWgtSGFydG1hbiB3
cm90ZToKPiBUaGUgZnVsbCBzcGVjaWZpY2F0aW9uIG9mIHRoZSBmaWxlc3lzdGVtIGNhbiBiZSBm
b3VuZCBhdDoKPiAgIGh0dHBzOi8vZG9jcy5taWNyb3NvZnQuY29tL2VuLXVzL3dpbmRvd3Mvd2lu
MzIvZmlsZWlvL2V4ZmF0LXNwZWNpZmljYXRpb24KClRoaXMgaXMgbm90IHRydXRoLiBUaGlzIHNw
ZWNpZmljYXRpb24gaXMgbm90ICJmdWxsIi4gVGhlcmUgYXJlIG1pc3NpbmcKaW1wb3J0YW50IGRl
dGFpbHMsIGxpa2UgaG93IGlzIFRleEZBVCBpbXBsZW1lbnRlZC4gSW4gdGhhdCBzcGVjaWZpY2F0
aW9uCmlzIGp1c3QgcmVmZXJlbmNlIHRvIG90aGVyIHVucHVibGlzaGVkIGRvY3VtZW50cy4gU28g
aXQgaXMgY2xhc3NpYyBNUwp3YXksIHRoZXkgcmVsZWFzZSBzb21ldGhpbmcgaW5jb21wbGV0ZSBh
bmQgaW5jb21wYXRpYmxlIHdpdGggdGhlaXIgb3duCk5UIGltcGxlbWVudGF0aW9uLCBsaWtlIHdp
dGggRkFUMzIgdnMgZmFzdGZhdC5zeXMuCgpJIHdvdWxkIGJlIHZlcnkgdmVyeSBjYXJlZnVsIGFi
b3V0IGV4aXN0ZW5jZSBvZiBzdWNoIGRvY3VtZW50YXRpb24gdW50aWwKc29tZWJvZHkgaW1wbGVt
ZW50IGl0IGFuZCBkbyBzb21lIHRlc3RpbmcgYWdhaW5zdCBNUyBvd24gaW1wbGVtZW50YXRpb24u
CgotLSAKUGFsaSBSb2jDoXIKcGFsaS5yb2hhckBnbWFpbC5jb20KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
