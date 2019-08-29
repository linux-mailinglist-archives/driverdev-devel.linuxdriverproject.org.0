Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A165A1A64
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 14:46:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D426E253F8;
	Thu, 29 Aug 2019 12:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CGXNkKSfuZFD; Thu, 29 Aug 2019 12:46:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7584A20444;
	Thu, 29 Aug 2019 12:46:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 034D41BF380
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 12:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0023F87004
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 12:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n-SfpQrWVa3q for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 12:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9CDAB86FFD
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 12:46:39 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id k1so3581617wmi.1
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 05:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=QlVIC8TNhGJq1NB5dIfzGpZGGFQCIpdVZDF44V62VcQ=;
 b=JV7b89eNFuS5WTpaC3U9r4/BkSvp1wlY4PXYTx3w4hEIfEm9P+CgbJu5H1VoJVWQKq
 68PDD+FSCBps8rPl+joi/bUj2C42piXodE/gVgdqWh3svPwjrXJxRKxzw7Q4oKjmBkt+
 zGiWqTGguB7RYgarPllP8n0o2MhkEOyxpN/aii3w/RS9DrO90+Qm+oB4VEdI1Gj0Qqz0
 r+dKd/MMucszeGo4UlII4Qo/PhfiZve0FlS2G5VUlkSJYxgqTfZYnmFy7+4t+7u+o+tO
 iAxEb4SrOcT+oKbKFDUD9lIGC7JhIUaJB18vI20gw1ZCsQeC/VeiekIrWA7ACbmdSV6K
 5J7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=QlVIC8TNhGJq1NB5dIfzGpZGGFQCIpdVZDF44V62VcQ=;
 b=PYtFz/PPcTtDGg1now+iqKLz5LHia6UQJdCmSou8+MzLxBfyzbv2gbOV9Ob7MHsXWk
 jpVV16rgXUDMM2piZD1ymTwimN3ntdtX7tI6VSfy9FvN6IdIeLTBK0Y5rBhPORT9zgyo
 0qdMsxuRRz4TLV1bBxTxSlEY0v0jcR5k1sbm4YQEMwvlEC1HEJlD4fB1W+sY/V7iX6bT
 4toB/absWr8rvoj+HBtQoKGVRgwxxJKyh94W6VzMOyc04lz8k2HJh4tnzqqkA06rolMC
 hhx+WfwRrmTdgBKvUpT6c2JhFL2QSq/iGr14MANeuCPZWBlK7FMxkCVdaLs17GmwrrMQ
 UzaQ==
X-Gm-Message-State: APjAAAU6jwoPFPSRkReV76lthpuVr52HPkJisIhMupqotrt1/In5bBeQ
 i5cgKQH9L/aYgs5JKNjiL7E=
X-Google-Smtp-Source: APXvYqwrshnUNKamixaL2Mpydl0AFKu7KVc1CrEhTFhBwIf2wyr5clc4/DhX7uakfObPGE2AS4L4uw==
X-Received: by 2002:a7b:c857:: with SMTP id c23mr12036367wml.51.1567082798038; 
 Thu, 29 Aug 2019 05:46:38 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id 25sm2552046wmi.40.2019.08.29.05.46.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 05:46:37 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:46:36 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829124636.475c7znb4pxuq2hi@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190829121435.bsl5cnx7yqgakpgb@pali>
 <81682.1567082044@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <81682.1567082044@turing-police>
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

T24gVGh1cnNkYXkgMjkgQXVndXN0IDIwMTkgMDg6MzQ6MDQgVmFsZGlzIEtsxJN0bmlla3Mgd3Jv
dGU6Cj4gT24gVGh1LCAyOSBBdWcgMjAxOSAxNDoxNDozNSArMDIwMCwgUGFsaSBSb2g/ciBzYWlk
Ogo+ID4gT24gV2VkbmVzZGF5IDI4IEF1Z3VzdCAyMDE5IDE4OjA4OjE3IEdyZWcgS3JvYWgtSGFy
dG1hbiB3cm90ZToKPiA+ID4gVGhlIGZ1bGwgc3BlY2lmaWNhdGlvbiBvZiB0aGUgZmlsZXN5c3Rl
bSBjYW4gYmUgZm91bmQgYXQ6Cj4gPiA+ICAgaHR0cHM6Ly9kb2NzLm1pY3Jvc29mdC5jb20vZW4t
dXMvd2luZG93cy93aW4zMi9maWxlaW8vZXhmYXQtc3BlY2lmaWNhdGlvbgo+ID4KPiA+IFRoaXMg
aXMgbm90IHRydXRoLiBUaGlzIHNwZWNpZmljYXRpb24gaXMgbm90ICJmdWxsIi4gVGhlcmUgYXJl
IG1pc3NpbmcKPiA+IGltcG9ydGFudCBkZXRhaWxzLCBsaWtlIGhvdyBpcyBUZXhGQVQgaW1wbGVt
ZW50ZWQuIAo+IAo+IFdlbGwuLmdpdmVuIHRoYXQgdGhlIHNwZWMgc2F5cyBpdCdzIGFuIGV4dGVu
c2lvbiB1c2VkIGJ5IFdpbmRvd3MgQ0UuLi4KCkl0IGlzIGV4dGVuc2lvbiB3aGljaCBwcm92aWRl
cyBtb3JlIGVycm9yLXByb25lIHdyaXRlIG9wZXJhdGlvbnMgdG8KbWluaW1pemUgZGFtYWdlIG9u
IGZpbGVzeXN0ZW0uCgo+ID4gMS41IFdpbmRvd3MgQ0UgYW5kIFRleEZBVAo+IAo+ID4gVGV4RkFU
IGlzIGFuIGV4dGVuc2lvbiB0byBleEZBVCB0aGF0IGFkZHMgdHJhbnNhY3Rpb24tc2FmZSBvcGVy
YXRpb25hbAo+ID4gc2VtYW50aWNzIG9uIHRvcCBvZiB0aGUgYmFzZSBmaWxlIHN5c3RlbS4gVGV4
RkFUIGlzIHVzZWQgYnkgV2luZG93cyBDRS4gVGV4RkFUCj4gPiByZXF1aXJlcyB0aGUgdXNlIG9m
IHRoZSB0d28gRkFUcyBhbmQgYWxsb2NhdGlvbiBiaXRtYXBzIGZvciB1c2UgaW4KPiA+IHRyYW5z
YWN0aW9ucy4gSXQgYWxzbyBkZWZpbmVzIHNldmVyYWwgYWRkaXRpb25hbCBzdHJ1Y3R1cmVzIGlu
Y2x1ZGluZyBwYWRkaW5nCj4gPiBkZXNjcmlwdG9ycyBhbmQgc2VjdXJpdHkgZGVzY3JpcHRvcnMu
Cj4gCj4gQW5kIHRoZXNlIHR3byBwaWVjZXMgb2YgaW5mbzoKPiAKPiA+IDMuMS4xMy4xIEFjdGl2
ZUZhdCBGaWVsZAo+IAo+ID4gVGhlIEFjdGl2ZUZhdCBmaWVsZCBzaGFsbCBkZXNjcmliZSB3aGlj
aCBGQVQgYW5kIEFsbG9jYXRpb24gQml0bWFwIGFyZSBhY3RpdmUKPiA+IChhbmQgaW1wbGVtZW50
YXRpb25zIHNoYWxsIHVzZSksIGFzIGZvbGxvd3M6Cj4gCj4gPiAwLCB3aGljaCBtZWFucyB0aGUg
Rmlyc3QgRkFUIGFuZCBGaXJzdCBBbGxvY2F0aW9uIEJpdG1hcCBhcmUgYWN0aXZlCj4gCj4gPiAx
LCB3aGljaCBtZWFucyB0aGUgU2Vjb25kIEZBVCBhbmQgU2Vjb25kIEFsbG9jYXRpb24gQml0bWFw
IGFyZSBhY3RpdmUgYW5kIGlzCj4gPiBwb3NzaWJsZSBvbmx5IHdoZW4gdGhlIE51bWJlck9mRmF0
cyBmaWVsZCBjb250YWlucyB0aGUgdmFsdWUgMgo+IAo+ID4gSW1wbGVtZW50YXRpb25zIHNoYWxs
IGNvbnNpZGVyIHRoZSBpbmFjdGl2ZSBGQVQgYW5kIEFsbG9jYXRpb24gQml0bWFwIGFzIHN0YWxl
Lgo+ID4gT25seSBUZXhGQVQtYXdhcmUgaW1wbGVtZW50YXRpb25zIHNoYWxsIHN3aXRjaCB0aGUg
YWN0aXZlIEZBVCBhbmQgQWxsb2NhdGlvbgo+ID4gQml0bWFwcyAoc2VlIFNlY3Rpb24gNy4xKS4K
PiAKPiA+IDMuMS4xNiBOdW1iZXJPZkZhdHMgRmllbGQKPiA+IFRoZSBOdW1iZXJPZkZhdHMgZmll
bGQgc2hhbGwgZGVzY3JpYmUgdGhlIG51bWJlciBvZiBGQVRzIGFuZCBBbGxvY2F0aW9uIEJpdG1h
cHMKPiA+IHRoZSB2b2x1bWUgY29udGFpbnMuCj4gCj4gPiBUaGUgdmFsaWQgcmFuZ2Ugb2YgdmFs
dWVzIGZvciB0aGlzIGZpZWxkIHNoYWxsIGJlOgo+IAo+ID4gMSwgd2hpY2ggaW5kaWNhdGVzIHRo
ZSB2b2x1bWUgb25seSBjb250YWlucyB0aGUgRmlyc3QgRkFUIGFuZCBGaXJzdCBBbGxvY2F0aW9u
IEJpdG1hcAo+IAo+ID4gMiwgd2hpY2ggaW5kaWNhdGVzIHRoZSB2b2x1bWUgY29udGFpbnMgdGhl
IEZpcnN0IEZBVCwgU2Vjb25kIEZBVCwgRmlyc3QKPiA+IEFsbG9jYXRpb24gQml0bWFwLCBhbmQg
U2Vjb25kIEFsbG9jYXRpb24gQml0bWFwOyB0aGlzIHZhbHVlIGlzIG9ubHkgdmFsaWQgZm9yCj4g
PiBUZXhGQVQgdm9sdW1lcwo+IAo+IEkgdGhpbmsgd2UncmUgT0sgaWYgd2UganVzdCBzZXQgQWN0
aXZlRmF0IHRvIDAgYW5kIE51bWJlck9mRmF0cyB0byAxLgoKQnV0IHRoaXMgZGVncmFkZXMgd2hv
bGUgRlMuIEV2ZW4gRkFUMzIgdXNlcyB0d28gRkFUIHRhYmxlcyBkdWUgdG8gYmlnCmZhY3RvciBv
ZiBicm9rZW5uZXNzIGFuZCBmc2NrIHRha2VzIGNhcmUgb2YgaXQgd2hlbiByZXBhaXJpbmcuCgpU
aGVyZSBpcyBub3QgdG9vIG11Y2ggc2Vuc2UgdG8gdXNlIGV4RkFUIHdpdGgganVzdCBvbmUgRkFU
IGlmIHdlIGhhdmUKYWxyZWFkeSB3b3JraW5nIEZBVDMyIHdpdGggcmVkdW5kYW5jeSBvZiBGQVQg
dGFibGUuCgo+IFVubGVzcyBzb21lYm9keSBoYXMgYWN0dWFsIGV2aWRlbmNlIG9mIGEgbm9uLVdp
bmRvd3NDRSBleHRmYXQgdGhhdCBoYXMKPiBOdW1iZXJPZkZhdHMgPT0gMi4uLi4KCi0tIApQYWxp
IFJvaMOhcgpwYWxpLnJvaGFyQGdtYWlsLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
