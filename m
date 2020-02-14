Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EF015F9E7
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Feb 2020 23:44:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B961C88377;
	Fri, 14 Feb 2020 22:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ktTdmJ1tmRwI; Fri, 14 Feb 2020 22:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E3218834D;
	Fri, 14 Feb 2020 22:44:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7893A1BF5DF
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 22:44:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E0B2226B3
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 22:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Zj-vvxODANk for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 22:44:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id DBA132262F
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 22:44:00 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id m10so3008241wmc.0
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 14:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=7ou4aOAtQiWLqJ4BD11jAAJu/G6iXaCmGHQ4xMX1mZc=;
 b=EWrkNsNFuBSv2T7Ug3sOFKpxbnEFoWPO4wB1PewNRYvThfXw+P63jriKZc0yFIIpEt
 eeAQMUtyixpe005EKZAJ9sXaZLWSFbEt8DxhLqO9PPEtWmqQEIEeuwOwrbIzseeS4rzz
 fEorloHt+3aLt47aYCKq1fcjVhL1t5vNeIHC//I0oHlyvX92g7wPTAUoFM6bt+UXW4Mc
 rSS3k2gy4AGmTv3dbWbgtwEc7/XyttadMKKpXjr0gAhXQhJbsuWDpsaxJ7ztvfwFzXfC
 FbOCQShWuJk+Z3kZqWjVTOyrYgJCnGeZY1nCHxqtO9rVNVyzxcZGHgMJP4ss8WCM/ySt
 uk6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=7ou4aOAtQiWLqJ4BD11jAAJu/G6iXaCmGHQ4xMX1mZc=;
 b=aCpObdRCuOJch7mvZF2vfpCMvay5glNNie7Jg82BG0JXvJQFp9Hgrek0IU9meade2a
 gM2eb+Bd/1O0HazBL+0L6gzMHRnqs6bVMSWTxktFzguqSaesXh6UEOUsVKu4eyYLinFd
 MNgkz3F8eq9v65Hp5PLrtEEzsOgpvs+8eKDzlMr4oPBZV31jVa/Xd6Lhv+38+XyGeJ9G
 XXxafDPvHkMRU9pc9Z/OrvU0CULfYEzr0cqqHBZy/UBGxhLsrfi064vflnpB706njFYv
 eFFFD7oEo1S9E8YNlcPHyF2o2/g0vcMQnyYWal7/WWgOaYTMmSfWHv0AUvfs2VS+Umiu
 Bsiw==
X-Gm-Message-State: APjAAAX4TaKOk6xIqllxl2alSeli/EaB3nlDGmPU/3sTtzZZ/SgukWwE
 bYlyw6sJgo02eaHUkg/OMxY=
X-Google-Smtp-Source: APXvYqxuofMzAee/uD415SRlDInENfVScPrDk1BAWi9A+092bRg0tqff+ZLt5NEMkOGe5ol6SbOyMw==
X-Received: by 2002:a7b:c4c5:: with SMTP id g5mr7026842wmk.85.1581720239259;
 Fri, 14 Feb 2020 14:43:59 -0800 (PST)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id q10sm9192364wme.16.2020.02.14.14.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 14:43:58 -0800 (PST)
Date: Fri, 14 Feb 2020 23:43:57 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20200214224357.yv2lwyusi3gwolp3@pali>
References: <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm>
 <20191017075008.2uqgdimo3hrktj3i@pali>
 <20200213000656.hx5wdofkcpg7aoyo@pali>
 <20200213211847.GA1734@sasha-vm> <86151.1581718578@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86151.1581718578@turing-police>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Christoph Hellwig <hch@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpZGF5IDE0IEZlYnJ1YXJ5IDIwMjAgMTc6MTY6MTggVmFsZGlzIEtsxJN0bmlla3Mgd3Jv
dGU6Cj4gT24gVGh1LCAxMyBGZWIgMjAyMCAxNjoxODo0NyAtMDUwMCwgU2FzaGEgTGV2aW4gc2Fp
ZDoKPiAKPiA+ID4+IEkgd2FzIGhvcGluZyB0aGF0IGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvIGVh
c2lseSB1c2Ugc2Vjb25kYXJ5IEZBVCB0YWJsZQo+ID4gPj4gKGZyb20gVGV4RkFUIGV4dGVuc2lv
bikgZm9yIHJlZHVuZGFuY3kgd2l0aG91dCBuZWVkIHRvIGltcGxlbWVudCBmdWxsCj4gPiA+PiBU
ZXhGQVQsIHdoaWNoIGNvdWxkIGJlIGFsc28gYmFja3dhcmQgY29tcGF0aWJsZSB3aXRoIHN5c3Rl
bXMgd2hpY2ggZG8KPiA+ID4+IG5vdCBpbXBsZW1lbnQgVGV4RkFUIGV4dGVuc2lvbiBhdCBhbGwu
IFNpbWlsYXJseSBsaWtlIHVzaW5nIEZBVDMyIGRpc2sKPiA+ID4+IHdpdGggdHdvIEZBVCB0YWJs
ZXMgaXMgcG9zc2libGUgYWxzbyBvbiBzeXN0ZW0gd2hpY2ggdXNlIGZpcnN0IEZBVAo+ID4gPj4g
dGFibGUuCj4gCj4gT0suLiBtYXliZSBJJ20gbm90IHN1ZmZpY2llbnRseSBjYWZmZWluYXRlZCwg
YnV0IGhvdyBkbyB5b3UgdXNlIDIgRkFUIHRhYmxlcyBvbgo+IGEgcGh5c2ljYWwgZGV2aWNlIGFu
ZCBleHBlY3QgaXQgdG8gd29yayBwcm9wZXJseSBvbiBhIHN5c3RlbSB0aGF0IHVzZXMganVzdCB0
aGUKPiBmaXJzdCBGQVQgdGFibGUsIGlmIHRoZSBkZXZpY2UgaXMgc2V0IHRvICJ1c2Ugc2Vjb25k
IHRhYmxlIiB3aGVuIHlvdSBtb3VudCBpdD8KPiBUaGF0IHNvdW5kcyBqdXN0IHRvbyBtdWNoIGxp
a2UgdGhlIGZhaWx1cmUgbW9kZXMgb2YgcnVubmluZyBmc2NrIG9uIGEgbW91bnRlZAo+IGZpbGVz
eXN0ZW0uLi4uCgpJZGVhIGlzIHNpbXBsZS4gRXhwZWN0cyB0aGF0IHdlIGhhdmUgYSBjbGVhbiBm
aWxlc3lzdGVtIGluIGNvcnJlY3QKc3RhdGUuIFdlIGxvYWQgcHJpbWFyeS9hY3RpdmUvbWFpbiBG
QVQgdGFibGUgKGp1c3QgY2FsbCBpdCBGQVQxKSBhbmQgYWxsCmNoYW5nZXMgdG8gZmlsZXN5c3Rl
bSB3b3VsZCBiZSBkb25lIHZpYSBzZWNvbmQgbm9uLWFjdGl2ZSBGQVQgdGFibGUKKEZBVDIpLiBB
dCB1bm1vdW50IG9yIHN5bmMgb3IgZmx1c2ggYnVmZmVyIHRpbWVzLCBGQVQyIHdvdWxkIGJlIGNv
cGllZApiYWNrIHRvIHRoZSBGQVQxIGFuZCBmaWxlc3lzdGVtIHdvdWxkIGJlIGJhY2sgaW4gY2xl
YW4gc3RhdGUuCgpTbyB0aGlzIHNob3VsZCBub3QgYnJlYWsgc3VwcG9ydCBmb3IgaW1wbGVtZW50
YXRpb25zIHdoaWNoIHVzZSBqdXN0CkZBVDEuIEFuZCBpZiBhYm92ZSBpbXBsZW1lbnRhdGlvbiB3
aGljaCB1c2UgYm90aCBGQVQxIGFuZCBGQVQyICJjcmFzaCIKZHVyaW5nIHdyaXRlIG9wZXJhdGlv
bnMgdG8gRkFUMiBpdCBtYXkgYmUgcG9zc2libGUgdG8gcmVjb25zdHJ1Y3QgYW5kCnJlcGFpciBz
b21lIHBhcnRzIG9mIGZpbGVzeXN0ZW0gZnJvbSBGQVQxIChhcyBpdCB3b3VsZCBjb250YWluIHBy
ZXZpb3VzCnN0YXRlIG9mIHNvbWUgZmlsZXN5c3RlbSBwYXJ0cykuCgpWaWEgZGlydHkgYml0IGNh
biBiZSBkZXRlY3RlZCBpZiBwcm9wZXIgdW5tb3VudCBvY2N1cnJlZCBvciBub3QsIGFuZApmc2Nr
IGltcGxlbWVudGF0aW9uIGNvdWxkIGRvIHVzZSB0aGlzIGZhY3QgYW5kIHRyeSB0byBkbyByZXBh
aXJpbmcKKHBvc3NpYmxlIGJ5IGFza2luZyB1c2VyIHdoYXQgc2hvdWxkIGRvKS4KCk9mIGNvdXJz
ZSBpZiBpbXBsZW1lbnRhdGlvbiB1c2Ugb25seSBGQVQxIHdlIGNhbm5vdCB1c2UgRkFUMiBmb3IK
cmVwYWlyaW5nIGFuZCB0aGVyZWZvcmUgZnNjayBzaG91bGQgcmVhbGx5IGFzayB1c2VyIGlmIGl0
IHNob3VsZCB1c2UKRkFUMiBmb3IgcmVwYWlyIG9yIG5vdC4KCklmIGltcGxlbWVudGF0aW9uIHVz
ZSBvbmx5IEZBVDEsIGRvZXMgbm90IGNyYXNoIGFuZCBsZXQgZmlsZXN5c3RlbSBpbgpjbGVhbi9j
b3JyZWN0IHN0YXRlIHRoZW4gdGhlcmUgc2hvdWxkIG5vdCBiZSBhbnkgcHJvYmxlbSBmb3IKaW1w
bGVtZW50YXRpb24gd2hpY2ggY2FuIHVzZSBib3RoIEZBVHMgYXMgaXQgcmVhZHMgbWFpbiBzdGF0
ZSBmcm9tIEZBVDEuClRoZXJlZm9yZSB0aGVzZSB0d28gaW1wbGVtZW50YXRpb25zIHNob3VsZCBi
ZSBjb21wYXRpYmxlIGFuZCBwcm9ibGVtIGNhbgpoYXBwZW4gb25seSBpZiB0aGV5IGxldCBmaWxl
c3lzdGVtIGluIGluY29uc2lzdGVudCBzdGF0ZS4gKEJ1dCBpZiB0aGV5CmxldCBpdCBpbiBpbmNv
bnNpc3RlbnQgc3RhdGUsIHRoZW4gYW55IGltcGxlbWVudGF0aW9uIG1heSBoYXZlIHRyb3VibGVz
CmFuZCBmc2NrIGlzIG5lZWRlZCkuCgpJIGhvcGUgdGhhdCBpdCBpcyBtb3JlIGNsZWFyIG5vdy4u
LgoKPiA+ID5CeSB0aGUgY2hhbmNlLCBpcyB0aGVyZSBhbnkgcG9zc2liaWxpdHkgdG8gcmVsZWFz
ZSBUZXhGQVQgc3BlY2lmaWNhdGlvbj8KPiA+ID5Vc2FnZSBvZiBtb3JlIEZBVCB0YWJsZXMgKGV2
ZW4gZm9yIExpbnV4KSBjb3VsZCBoZWxwIHdpdGggZGF0YSByZWNvdmVyeS4KPiA+Cj4gPiBUaGlz
IHdvdWxkIGJlIGEgbWFqb3IgcGFpbiBpbiB0aGUgYXJzZSB0byBwdWxsIG9mZiAoZXZlbiBtb3Jl
IHRoYXQKPiA+IHJlbGVhc2luZyBleEZBVCBpdHNlbGYpIGJlY2F1c2UgVGV4RkFUIGlzIGVmZmVj
dGl2ZWx5IGRlYWQgYW5kIG5vIG9uZQo+ID4gaGVyZSBjYXJlcyBhYm91dCBpdC4gSXQncyBub3Qg
ZXZlbiB0aGUgY2FzZSB0aGF0IHRoZXJlIGFyZSBkZXZpY2VzIHdoaWNoCj4gPiBhcmUgbm93IGxl
ZnQgdW5zdXBwb3J0ZWQsIHRoZSB3aG9sZSBUZXhGQVQgc2NoZW1lIGlzIGp1c3QgZGVhZCBhbmQg
Z29uZS4KPiA+Cj4gPiBDb3VsZCBJIHBvaW50IHlvdSB0byB0aGUgVGV4RkFUIHBhdGVudCBpbnN0
ZWFkCj4gPiAoaHR0cHM6Ly9wYXRlbnRzLmdvb2dsZS5jb20vcGF0ZW50L1VTNzYxMzczOEIyL2Vu
KT8gSXQgZGVzY3JpYmVzIHdlbGwKPiA+IGhvdyBUZXhGQVQgdXNlZCB0byB3b3JrLgo+IAo+IEkg
ZG9uJ3QgdGhpbmsgYW55Ym9keSB3YW50cyB0aGUgZnVsbCBUZXhGQVQgc3VwcG9ydCAtIGJ1dCBo
YXZpbmcgYSBiYWNrdXAgY29weQo+IG9mIHRoZSBGQVQgd291bGQgYmUgbmljZSBpbiBzb21lIGNp
cmN1bXN0YW5jZXMuCgpNYWluIHByb2JsZW0gaXMgdGhhdCB3ZSBkbyBub3Qga25vdyB3aGF0ICJm
dWxsIFRleEZBVCBzdXBwb3J0IiBtZWFucyBhcwpjdXJyZW50bHkgaXQgaXMgc2VjcmV0LgoKTXkg
b3JpZ2luYWwgcXVlc3Rpb24gZm9yIFRleEZBVCB3YXMgYWxzbyBiZWNhdXNlIG9mIE51bWJlck9m
RmF0cyBzZXQgdG8KMiBpcyBhY2NvcmRpbmcgdG8gcmVsZWFzZWQgZXhGQVQgc3BlY2lmaWNhdGlv
biBwb3NzaWJsZSBvbmx5IGZvciBUZXhGQVQKdm9sdW1lcy4KCkFuZCBmcm9tIHJlYWRpbmcgd2hv
bGUgZXhGQVQgc3BlY2lmaWNhdGlvbiBJIHNlZSB0aGF0IGJldHRlciBkYXRhCnJlY292ZXJ5IGNh
biBiZSBhY2hpZXZlZCBvbmx5IGJ5IGhhdmluZyBiYWNrdXAgY29weSBvZiBGQVQgdGFibGUgKGFu
ZAphbGxvY2F0aW9uIGJpdG1hcCksIHdoaWNoIGlzIGxpbWl0ZWQgdG8gKGN1cnJlbnRseSB1bmRv
Y3VtZW50ZWQpIFRleEZBVApleHRlbnNpb24uCgotLSAKUGFsaSBSb2jDoXIKcGFsaS5yb2hhckBn
bWFpbC5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
