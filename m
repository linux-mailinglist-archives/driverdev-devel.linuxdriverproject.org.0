Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2156EA4699
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2019 02:04:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1036786CF9;
	Sun,  1 Sep 2019 00:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fu96D2hlmbP7; Sun,  1 Sep 2019 00:04:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B9F386B33;
	Sun,  1 Sep 2019 00:04:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0AA111BF3B5
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 00:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 06844860DB
 for <devel@linuxdriverproject.org>; Sun,  1 Sep 2019 00:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJYQjl-ITzLv for <devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 00:04:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail104.syd.optusnet.com.au (mail104.syd.optusnet.com.au
 [211.29.132.246])
 by whitealder.osuosl.org (Postfix) with ESMTP id F2F06861AB
 for <devel@driverdev.osuosl.org>; Sun,  1 Sep 2019 00:04:49 +0000 (UTC)
Received: from dread.disaster.area (pa49-181-255-194.pa.nsw.optusnet.com.au
 [49.181.255.194])
 by mail104.syd.optusnet.com.au (Postfix) with ESMTPS id 2957643D6F0;
 Sun,  1 Sep 2019 10:04:44 +1000 (AEST)
Received: from dave by dread.disaster.area with local (Exim 4.92)
 (envelope-from <david@fromorbit.com>)
 id 1i4DMI-00034W-TN; Sun, 01 Sep 2019 10:04:42 +1000
Date: Sun, 1 Sep 2019 10:04:42 +1000
From: Dave Chinner <david@fromorbit.com>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190901000442.GF7777@dread.disaster.area>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com>
 <20190829094136.GA28643@infradead.org>
 <20190829095019.GA13557@kroah.com>
 <20190829103749.GA13661@infradead.org>
 <20190829111810.GA23393@kroah.com>
 <20190830215410.GD7777@dread.disaster.area>
 <295503.1567247505@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <295503.1567247505@turing-police>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Optus-CM-Score: 0
X-Optus-CM-Analysis: v=2.2 cv=FNpr/6gs c=1 sm=1 tr=0
 a=YO9NNpcXwc8z/SaoS+iAiA==:117 a=YO9NNpcXwc8z/SaoS+iAiA==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=IkcTkHD0fZMA:10 a=J70Eh1EUuV4A:10
 a=7-415B0cAAAA:8 a=xnCBgfmyHqVRtrSWEYsA:9 a=QEXdDO2ut3YA:10
 a=biEYGPWJfzWAr4FL6Ov7:22
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <alexander.levin@microsoft.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gU2F0LCBBdWcgMzEsIDIwMTkgYXQgMDY6MzE6NDVBTSAtMDQwMCwgVmFsZGlzIEtsxJN0bmll
a3Mgd3JvdGU6Cj4gT24gU2F0LCAzMSBBdWcgMjAxOSAwNzo1NDoxMCArMTAwMCwgRGF2ZSBDaGlu
bmVyIHNhaWQ6Cj4gCj4gPiBUaGUgY29ycmVjdCBwbGFjZSBmb3IgbmV3IGZpbGVzeXN0ZW0gcmV2
aWV3IGlzIHdoZXJlIGFsbCB0aGUKPiA+IGV4cGVyaWVuY2VkIGZpbGVzeXN0ZW0gZGV2ZWxvcGVy
cyBoYW5nIG91dCAtIHRoYXQncyBsaW51eC1mc2RldmVsLAo+ID4gbm90IHRoZSBkcml2ZXIgc3Rh
Z2luZyB0cmVlLgo+IAo+IFNvIGZhciBldmVyeXRoaW5nJ3MgYmVlbiBjYydlZCB0byBsaW51eC1m
c2RldmVsLCB3aGljaCBoYXMgYmVlbiBzcGVuZGluZwo+IG1vcmUgdGltZSBkaXNjdXNzaW5nIHVu
bGlrZWx5KCkgdXNhZ2UgaW4gYSBkaWZmZXJlbnQgZmlsZXN5c3RlbS4KClRoYXQncyBqdXN0IG5v
aXNlIC0geW91J2xsIGdldCB3aGl0ZXNwYWNlIGFuZCBvdGhlciB0cml2aWFsCnJldmlldyBvbiBh
bnkgbGlzdCB5b3UgcG9zdCBhIHBhdGNoIHNlcmllcyBmb3IgcmV2aWV3LiBHbyBiYWNrIGFuZAps
b29rIGF0IHdoYXQgb3RoZXIgcGVvcGxlIGhhdmUgcmFpc2VkIHcuci50LiB0byB0aGF0IGZpbGVz
eXN0ZW0gLQpvbi1kaXNrIGZvcm1hdCB2YWxpZGF0aW9uLCByZS1pbXBsZW1lbnRhdGlvbiBvZiBs
YXJnZWx5IGdlbmVyaWMKY29kZSwgbGFjayBvZiBuYW1lc3BhY2luZyBvZiBmdW5jdGlvbnMgbGVh
ZGluZyB0byBjb25mbGljdHMgd2l0aApnZW5lcmljL1ZGUyBmdW5jdGlvbmFsaXR5LCBldGMuCgpS
ZXZpZXcgYmFuZHdpZHRoIGZvciB0aGluZ3MgbGlrZSBvbi1kaXNrIGZvcm1hdCBkZWZpbml0aW9u
IGFuZAptYW5pcHVsYXRpb24sIGNvbnNpc3RlbmN5IHdpdGggb3RoZXIgZmlsZXN5c3RlbXMsIGVm
ZmljaWVudAppbnRlZ3JhdGlvbiBpbnRvIHRoZSBnZW5lcmljIGluZnJhc3RydWN0dXJlLCBldGMg
aXMgbGltaXRlZC4KRXZlcnlvbmUgaGFzIHRvIGp1Z2dsZSB0aGF0IGFyb3VuZCB0aGUgbG9hZCB0
aGV5IGhhdmUgZm9yIHRoZWlyIG93bgpmaWxlc3lzdGVtIG1haW50ZW5hbmNlLCBhbmQgdGhlcmUn
cyB1c3VhbGx5IG9ubHkgYmFuZHdpZHRoIGZvciBhCnNpbmdsZSBmaWxlc3lzdGVtIGF0IGEgdGlt
ZS4KCkp1c3QgYmUgcGF0aWVudCAtIHRyeWluZyB0byBmb3JjZSB0aGUgbWVyZ2luZyBvZiBjb2Rl
IGJlZm9yZSB0aGVyZSdzCmV2ZW4gYmVlbiBjb25zZW5zdXMgb24gZnVuZGFtZW50YWwgYXJjaGl0
ZWN0dXJlIGNob2ljZXMgZG9lc24ndCBtYWtlCnRoaW5ncyBiZXR0ZXIgZm9yIGFueW9uZS4gIE1l
cmdpbmcgaW5jb21wbGV0ZSBmaWxlc3lzdGVtIGNvZGUgZWFybHkKaW4gdGhlIGRldmVsb3BtZW50
IGN5Y2xlIGhhcyAtYWx3YXlzLSBiZWVuIHNvbWV0aGluZyB3ZSd2ZSByZWdyZXR0ZWQKaW4gdGhl
IGxvbmcgcnVuLiAgV2UndmUgbGVhcm4gdGhpcyBsZXNzb24gbWFueSB0aW1lcyBiZWZvcmUsIHll
dCB3ZQpzZWVtIGRvb21lZCB0byByZXBlYXQgaXQgeWV0IGFnYWluLi4uCgpDaGVlcnMsCgpEYXZl
LgotLSAKRGF2ZSBDaGlubmVyCmRhdmlkQGZyb21vcmJpdC5jb20KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
