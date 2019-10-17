Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C05DA6C3
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 09:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 74E4287CE4;
	Thu, 17 Oct 2019 07:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S-Cy4tzsKrQe; Thu, 17 Oct 2019 07:50:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49C9C87C98;
	Thu, 17 Oct 2019 07:50:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 563831BF2FD
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 07:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 528B986C34
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 07:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zmuS4sLLZRSi for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 07:50:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6611286BEC
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 07:50:11 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id n14so1125130wrw.9
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 00:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=oGjvr5hp9EJMVELthmx8VDqL9EDDYsUzQ79Pl9p8iWs=;
 b=d8XbFKyUcvle4NGbuJFQAXvY6UVGdxME8GBF7Wz0yfI03iL3MqQfFX93U4RhJKsr8i
 Cl/mDAVROC8vhtIC5nwLXsItKAXMLZehn626vrwy7Razi6vwp/7v07Q/KIrIkD1IF3/Z
 HGgckLS8BKF7C+R2tNucJsHCEENcee+2ZVqVrs5ZpVHdddzfBkr/57lRRlT0V4TUyoO0
 Nr9zHF1cTQk11nLX7nnOGzMFJ+VVOBDYwVb+EDHICvPG+UIS11RfBXzzf12mzzkFdrvj
 9QqVzEOap/cf27vs9JpJOIjLhbIOJlbdNo68UKqk0NHJ+wsOmCDz57EAh/DAHZrfUeqN
 l2lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=oGjvr5hp9EJMVELthmx8VDqL9EDDYsUzQ79Pl9p8iWs=;
 b=hpIyDCSb9GHHCV5IT91DYoqMzpAiAkKZv0tiz2NZw0KmOv/R1GNfgkFUjxHlmogmnr
 XDiyMMZ6RYTJGAh9z/m7/LisRZofLx7YYz7WlobtWR2V2GT/E6l4E7pEulVSP6QQFAVh
 8G7Jd1eM+PhWnp0ayS0Oy0hROhIGlp4Ct31RIlYWLQhcdHX6wSI2kx7wPFp2pDDyQvhp
 5bmqrcpJI3zRh3m0O1KE+tZ2+XLfUafaxT8L6YTi10bLDeh09H+wFktCv7iLqfSWvHrl
 6wRcXWEB0dD6HaggTC9tL1J04TPeBparTmiqDI7WTo4XBXtjxMUHWlt1D0F90JXgUxps
 fA9Q==
X-Gm-Message-State: APjAAAXJhaOWRY4EZoWzAoU5Y5dbCcPZfpFrlUFZDR5/NVOIGQyV9cX9
 LCZ2QP6jRuSm0VaemQ3l/I8=
X-Google-Smtp-Source: APXvYqxxiGQBlJy6UJiI0bKvNipvgqd2D7FO59gwJsgMZMN/WA60a3r82lazYwCSWHeFmn4TieY2Eg==
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr1713270wrw.167.1571298609805; 
 Thu, 17 Oct 2019 00:50:09 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id u25sm1366158wml.4.2019.10.17.00.50.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 00:50:08 -0700 (PDT)
Date: Thu, 17 Oct 2019 09:50:08 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20191017075008.2uqgdimo3hrktj3i@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police> <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016203317.GU31224@sasha-vm>
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

T24gV2VkbmVzZGF5IDE2IE9jdG9iZXIgMjAxOSAxNjozMzoxNyBTYXNoYSBMZXZpbiB3cm90ZToK
PiBPbiBXZWQsIE9jdCAxNiwgMjAxOSBhdCAwNjowMzo0OVBNICswMjAwLCBQYWxpIFJvaMOhciB3
cm90ZToKPiA+IE9uIFdlZG5lc2RheSAxNiBPY3RvYmVyIDIwMTkgMTA6MzE6MTMgU2FzaGEgTGV2
aW4gd3JvdGU6Cj4gPiA+IE9uIFdlZCwgT2N0IDE2LCAyMDE5IGF0IDA0OjAzOjUzUE0gKzAyMDAs
IFBhbGkgUm9ow6FyIHdyb3RlOgo+ID4gPiA+IE9uIEZyaWRheSAzMCBBdWd1c3QgMjAxOSAwOTo1
Njo0NyBQYWxpIFJvaMOhciB3cm90ZToKPiA+ID4gPiA+IE9uIFRodXJzZGF5IDI5IEF1Z3VzdCAy
MDE5IDE5OjM1OjA2IFNhc2hhIExldmluIHdyb3RlOgo+ID4gPiA+ID4gPiBXaXRoIHJlZ2FyZHMg
dG8gbWlzc2luZyBzcGVjcy9kb2NzL3doYXRldmVyIC0gb3VyIG1haW4gY29uY2VybiB3aXRoIHRo
aXMKPiA+ID4gPiA+ID4gcmVsZWFzZSB3YXMgdGhhdCB3ZSB3YW50IGZ1bGwgaW50ZXJvcGVyYWJp
bGl0eSwgd2hpY2ggaXMgd2h5IHRoZSBzcGVjCj4gPiA+ID4gPiA+IHdhcyBtYWRlIHB1YmxpYyBh
cy1pcyB3aXRob3V0IG1vZGlmaWNhdGlvbnMgZnJvbSB3aGF0IHdhcyB1c2VkCj4gPiA+ID4gPiA+
IGludGVybmFsbHkuIFRoZXJlJ3Mgbm8gInNlY3JldCBzYXVjZSIgdGhhdCBNaWNyb3NvZnQgaXMg
aGlkaW5nIGhlcmUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gT2ssIGlmIGl0IHdhcyBqdXN0IGRyb3Ag
b2YgImN1cnJlbnQgdmVyc2lvbiIgb2YgZG9jdW1lbnRhdGlvbiB0aGVuIGl0Cj4gPiA+ID4gPiBt
YWtlcyBzZW5zZS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEhvdyBhYm91dCB3ZSBnaXZlIHRoaXMg
c3BlYy9jb2RlIHRpbWUgdG8gZ2V0IHNvYWtlZCBhbmQgcmV2aWV3ZWQgZm9yIGEKPiA+ID4gPiA+
ID4gYml0LCBhbmQgaWYgZm9sa3Mgc3RpbGwgZmVlbCAoaW4gYSBtb250aCBvciBzbz8pIHRoYXQg
dGhlcmUgYXJlIG1pc3NpbmcKPiA+ID4gPiA+ID4gYml0cyBvZiBpbmZvcm1hdGlvbiByZWxhdGVk
IHRvIGV4ZmF0LCBJJ2xsIGJlIGhhcHB5IHRvIGdvIGJhY2sgYW5kIHRyeQo+ID4gPiA+ID4gPiB0
byBnZXQgdGhlbSBvdXQgYXMgd2VsbC4KPiA+ID4gPgo+ID4gPiA+IEhlbGxvIFNhc2hhIQo+ID4g
PiA+Cj4gPiA+ID4gTm93IG9uZSBtb250aCBwYXNzZWQsIHNvIGRvIHlvdSBoYXZlIHNvbWUgaW5m
b3JtYXRpb24gd2hlbiBtaXNzaW5nIHBhcnRzCj4gPiA+ID4gb2YgZG9jdW1lbnRhdGlvbiBsaWtl
IFRleEZBVCB3b3VsZCBiZSByZWxlYXNlZCB0byBwdWJsaWM/Cj4gPiA+IAo+ID4gPiBTdXJlLCBJ
J2xsIHNlZSBpZiBJIGNhbiBnZXQgYW4gYXBwcm92YWwgdG8gb3BlbiBpdCB1cC4KPiA+IAo+ID4g
T2shCj4gPiAKPiA+ID4gQ2FuIEkgYXNzdW1lIHlvdSB3aWxsIGJlIGltcGxlbWVudGluZyBUZXhG
QVQgc3VwcG9ydCBvbmNlIHRoZSBzcGVjIGlzCj4gPiA+IGF2YWlsYWJsZT8KPiA+IAo+ID4gSSBj
YW5ub3QgcHJvbWlzZSB0aGF0IEkgd291bGQgaW1wbGVtZW50IHNvbWV0aGluZyB3aGljaCBJIGRv
IG5vdCBrbm93Cj4gPiBob3cgaXMgd29ya2luZy4uLiBJdCBkZXBlbmRzIG9uIGhvdyBjb21wbGlj
YXRlZCBUZXhGQVQgaXMgYW5kIGFsc28gaG93Cj4gPiBmdXR1cmUgZXhmYXQgc3VwcG9ydCBpbiBr
ZXJuZWwgd291bGQgbG9vayBsaWtlLgo+ID4gCj4gPiBCdXQgSSdtIGludGVyZXN0aW5nIGluIGlt
cGxlbWVudGluZyBpdC4KPiAKPiBJdCBsb29rcyBsaWtlIHRoZSByZWFzb24gdGhpcyB3YXNuJ3Qg
bWFkZSBwdWJsaWMgYWxvbmcgd2l0aCB0aGUgZXhGQVQKPiBzcGVjIGlzIHRoYXQgVGV4RkFUIGlz
IHByZXR0eSBtdWNoIGRlYWQgLSBpdCdzIG9sZCwgdGhlcmUgYXJlIG5vIHVzZXJzCj4gd2UgYXJl
IGF3YXJlIG9mLCBhbmQgZGlnZ2luZyBpdCBvdXQgb2YgaXQncyBncmF2ZSB0byBtYWtlIGl0IHB1
YmxpYyBpcwo+IGFjdHVhbGx5IHF1aXRlIHRoZSBoZWFkYWNoZS4KPiAKPiBJcyB0aGlzIHNvbWV0
aGluZyB5b3UgYWN0dWFsbHkgaGF2ZSBhIG5lZWQgZm9yPyBhbiBlbnRpdHkgdGhhdCBoYXMgYQo+
IHJlcXVpcmVtZW50IGZvciBUZXhGQVQ/CgpIaSEKCkkgZG8gbm90IGhhdmUgZGV2aWNlIHdpdGgg
cmVxdWlyZW1lbnRzIGZvciBUZXhGQVQuIFRoZSBmaXJzdCByZWFzb24gd2h5Ckkgd2FudGVkIHRv
IHVzZSBUZXhGQVQgd2FzIHRoYXQgaXQgaXQgdGhlIG9ubHkgd2F5IGhvdyB0byB1c2UgbW9yZSBG
QVQKdGFibGVzIChlLmcuIHNlY29uZGFyeSBmb3IgYmFja3VwKSBhbmQgaW5mb3JtYXRpb24gZm9y
IHRoYXQgaXMgbWlzc2luZwppbiByZWxlYXNlZCBleEZBVCBzcGVjaWZpY2F0aW9uLiBUaGlzIGNv
dWxkIGJyaW5nIGJldHRlciBkYXRhIHJlY292ZXJ5LgoKPiBJJ2Qgd291bGQgcmF0aGVyIHNwZW5k
IG15IHRpbWUgZWxzZXdoZXJlIHRoYW4gZGlnZ2luZyBUZXhGQVQgb3V0IG9mIGl0J3MgZ3JhdmUu
CgpPay4KCkkgd2FzIGhvcGluZyB0aGF0IGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvIGVhc2lseSB1
c2Ugc2Vjb25kYXJ5IEZBVCB0YWJsZQooZnJvbSBUZXhGQVQgZXh0ZW5zaW9uKSBmb3IgcmVkdW5k
YW5jeSB3aXRob3V0IG5lZWQgdG8gaW1wbGVtZW50IGZ1bGwKVGV4RkFULCB3aGljaCBjb3VsZCBi
ZSBhbHNvIGJhY2t3YXJkIGNvbXBhdGlibGUgd2l0aCBzeXN0ZW1zIHdoaWNoIGRvCm5vdCBpbXBs
ZW1lbnQgVGV4RkFUIGV4dGVuc2lvbiBhdCBhbGwuIFNpbWlsYXJseSBsaWtlIHVzaW5nIEZBVDMy
IGRpc2sKd2l0aCB0d28gRkFUIHRhYmxlcyBpcyBwb3NzaWJsZSBhbHNvIG9uIHN5c3RlbSB3aGlj
aCB1c2UgZmlyc3QgRkFUCnRhYmxlLgoKPiBJcyB0aGVyZSBhbnl0aGluZyBlbHNlIGluIHRoZSBl
eEZBVCBzcGVjIHRoYXQgaXMgbWlzc2luZyAoYW5kIHNvbWVvbmUKPiBhY3R1YWxseSB3YW50cy91
c2VzKT8KCkN1cnJlbnRseSBJIGRvIG5vdCBrbm93LgoKLS0gClBhbGkgUm9ow6FyCnBhbGkucm9o
YXJAZ21haWwuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
