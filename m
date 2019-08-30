Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 707E7A31C7
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 10:03:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B3FD8839F;
	Fri, 30 Aug 2019 08:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHDov0iv6tOD; Fri, 30 Aug 2019 08:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEFFC88310;
	Fri, 30 Aug 2019 08:03:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B6631BF3DA
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 08:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 052772631D
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 08:03:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ubspkNJS5dj8 for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 08:03:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id F1E0326319
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 08:03:05 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id y135so3799541wmc.1
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 01:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Vqg4+0qE9By32oVPvkVXl8z2qAEWRTcGM4ZUpT4P/yk=;
 b=imBf2A2SylOOCpkSfnUaZ0Yr/PohhWOJK7LTChewnYLurpeh9mvz6IYcdodAxfuIKb
 bqhyCO7siqbspw7/pOGRSjEpj6Jk6md0R2SCnRG4eAaS3YgJhk+axN9a3XTABiiBcZeX
 KDR/w2ZkkrE3AgMfZY+9ZcTokdTuS8lYk/cqZBAU4OV691WP8tZMDsVELuLJhvQlhvIx
 +ra1xGjptsW58EOHcWm5JNThztUTmjC38krTntvd2nP5XH+LN2Wc3DazKOvLijy1Jwr/
 Uxs4I4IAgtE18dlJtrk4UiNoWyVgZzwzkMPplSz67lxnR9dm9a9impUuwW4o6fCHIsbE
 /aFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Vqg4+0qE9By32oVPvkVXl8z2qAEWRTcGM4ZUpT4P/yk=;
 b=dntyTOtoidfX27zpvBnzkhzB0QWNxkblOepd+gXeOVry88bFS4fReazILxUQiY4Qgh
 4UyQTEbfTtXVWUG6yd70JE6TMeFVepVBcp1kIzWNxlDrS2TeClMJe3hp75Cg0ZUjgVoY
 cyK3mtzCuLWDjfjF4G6a43QzwO7hpitw9Hd1fAGdFMM4rUbV67gUZcUEUWPk65pZCCJ5
 D/UWFN2a2OykN227i+ec3EZDdc5sTm7iIo6Ht2dCydlmcpBKey+o5K94jB1OE8jwxPe+
 XQL3z4fcsl0Vfrf/cWNEN3R/VweJrCziFSh7OgdwcnhPaM6IJYVP1LdbtNo+lHCWgIsi
 0Lhg==
X-Gm-Message-State: APjAAAVshuDpUcEmpL4HD0k5BMQs5JnRPaKmXT1SqKTqZTjQE9PbKiXy
 GkPd7roiTWb6EPVVpbChZhk=
X-Google-Smtp-Source: APXvYqwptRw3grP98+iqcnu6j4w/z5h5jfty0Wj43zUc4O/9bA/1UWI/YKZI5QQqy5pg3XziQtS/8Q==
X-Received: by 2002:a7b:cb81:: with SMTP id m1mr16420917wmi.124.1567152184350; 
 Fri, 30 Aug 2019 01:03:04 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id w125sm10551497wmg.32.2019.08.30.01.03.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 30 Aug 2019 01:03:03 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:03:02 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190830080302.bgfosew4rzc4og67@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829205631.uhz6jdboneej3j3c@pali>
 <184209.1567120696@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <184209.1567120696@turing-police>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1cnNkYXkgMjkgQXVndXN0IDIwMTkgMTk6MTg6MTYgVmFsZGlzIEtsxJN0bmlla3Mgd3Jv
dGU6Cj4gT24gVGh1LCAyOSBBdWcgMjAxOSAyMjo1NjozMSArMDIwMCwgUGFsaSBSb2g/ciBzYWlk
Ogo+IAo+ID4gSSdtIG5vdCByZWFsbHkgc3VyZSBpZiB0aGlzIGV4ZmF0IGltcGxlbWVudGF0aW9u
IGlzIGZ1bGx5IHN1aXRhYmxlIGZvcgo+ID4gbWFpbmxpbmUgbGludXgga2VybmVsLgo+ID4KPiA+
IEluIG15IG9waW5pb24sIHByb3BlciB3YXkgc2hvdWxkIGJlIHRvIGltcGxlbWVudCBleEZBVCBz
dXBwb3J0IGludG8KPiA+IGV4aXN0aW5nIGZzL2ZhdC8gY29kZSBpbnN0ZWFkIG9mIHJlcGxhY2lu
ZyB3aG9sZSB2ZmF0L21zZG9zZnMgYnkgdGhpcwo+ID4gbmV3IChub3cgc3RhZ2luZykgZmF0IGlt
cGxlbWVudGF0aW9uLgo+IAo+ID4gSW4gbGludXgga2VybmVsIHdlIHJlYWxseSBkbyBub3QgbmVl
ZCB0d28gZGlmZmVyZW50IGltcGxlbWVudGF0aW9uIG9mCj4gPiBWRkFUMzIuCj4gCj4gVGhpcyBw
YXRjaCBob3dldmVyIGRvZXMgaGF2ZSBvbmUgbWFqb3IgYWR2YW50YWdlIG92ZXIgInBhdGNoIHZm
YXQgdG8KPiBzdXBwb3J0IGV4ZmF0IiAtIHdoaWNoIGlzIHRoYXQgdGhlIHBhdGNoIGV4aXN0cy4K
CkkgdW5kZXJzdGFuZCB0aGF0IHRoaXMgaXMgYWR2YW50YWdlLi4uCgo+IElmIHNvbWVib2R5IGNv
bWVzIGZvcndhcmQgd2l0aCBhbiBhY3R1YWwgImV4dGVuZCB2ZmF0IHRvIGRvIGV4ZmF0IiBwYXRj
aCwKPiB3ZSBzaG91bGQgYXQgdGhhdCBwb2ludCBoYXZlIGEgZGlzY3Vzc2lvbiBhYm91dCByZWxh
dGl2ZSBtZXJpdHMuLi4uCgouLi4gYnV0IGlzIHRoaXMgYWR2YW50YWdlIHN1Y2ggYmlnIHRoYXQg
aXQgc2hvdWxkIGJlIG1lcmdlZCBldmVuIGR1ZSB0bwoiaG9ycmlibGUiIGNvZGUgcXVhbGl0eSBh
bmQgbG90IG9mIGNvZGUvZnVuY3Rpb25hbGl0eSBkdXBsaWNhdGlvbj8KSW4gc2ltaWxhciB3YXkg
dGhlcmUgc2hvdWxkIGJlIGRpc2N1c3Npb24gYWJvdXQgdGhlc2UgcHJvcyBhbmQgY29ucy4KCi0t
IApQYWxpIFJvaMOhcgpwYWxpLnJvaGFyQGdtYWlsLmNvbQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
