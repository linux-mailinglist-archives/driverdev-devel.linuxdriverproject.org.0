Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E35D38D447
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 May 2021 09:48:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCD9B83DFB;
	Sat, 22 May 2021 07:48:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3VuBJkLjIoll; Sat, 22 May 2021 07:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3DF783BB4;
	Sat, 22 May 2021 07:48:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B8251BF8A8
 for <devel@linuxdriverproject.org>; Sat, 22 May 2021 07:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5AA3940121
 for <devel@linuxdriverproject.org>; Sat, 22 May 2021 07:48:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GIx4jOG06F-m for <devel@linuxdriverproject.org>;
 Sat, 22 May 2021 07:48:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A26240004
 for <devel@driverdev.osuosl.org>; Sat, 22 May 2021 07:48:36 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id u21so33690172ejo.13
 for <devel@driverdev.osuosl.org>; Sat, 22 May 2021 00:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=f6rySvgRlBN/T31lzxGz/WWM84gEGemugwmSK+NtGuk=;
 b=SHK7mIjEwv5HRYaI1cU30LkvNsaT6h7yTyxXZZxxPWUdl0T7QEiUUv8/XEXqnG7mwW
 2b8Sl5XZb/vdvsPjkD/mIJ/SF18p4KvfJKApZqgOJjSvDGzQ+4tUKr0ujorrIKl5ogBa
 8f2AAFhXgZrQmXFq4b5zJJ5sTMTfnvy72afWPdyRMKxO/YINtMPlckivmyQcEvrzjHyb
 CycL6CG0wzv1j8CAd0dqbGIE6Y3SFMF14CoM1jfF8uVvtRjVARptTvglb9yyGIscc0Gg
 zISft44OD1bwvWv8j7pkl6fTDQLw1GGRcFJ+BQUgepMhgvPUALm/gluZ8O2Ys1K8n+B3
 t4iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=f6rySvgRlBN/T31lzxGz/WWM84gEGemugwmSK+NtGuk=;
 b=l/I7ffru5FEtlRMIeki/kyoWVZkBb1Qa0dZ3xrZf4cF8QF7Gc4WHCUeN2wTMvIKsgR
 7gF4DRCWuSenGgIO2CQy5GRDfxhABP8AvOfMcQJ6Uj5GBEYpyalXjVPftKXzDMfYqSGX
 5kFOgN2cz80VCczQCG5kZZAUtUSjlAAA5cULd8i1niUG8JUsbOJcHqXKg36L0T78GAVD
 iyztbWtLud6mYAt6O3kHSIL4CIic8CQef4PqRehAj3ORR+8rFCB3ZU8OGPx82WcrCe2h
 /F1Cb8IS5zS969tDT8EewLGZ7BuhreFN7GGIpoliPUAoeJ1qVu0wRr48KzzpNRdrEnQ7
 NubA==
X-Gm-Message-State: AOAM531scSoVCYvgFe/HI2UUgfyTvQjAcDmq4RfqQJfEN0aQBHQB9IjH
 ErD9RNFsRbmhaj3vtKrfBz4=
X-Google-Smtp-Source: ABdhPJw8J6olP/cPF1QUJ7eJRKWUltoI5VYE/vq8yw0PoQa3gyI+A+RFbLK6GfvpVEB7EO53LaRn7Q==
X-Received: by 2002:a17:907:3f1d:: with SMTP id
 hq29mr9163475ejc.163.1621669714210; 
 Sat, 22 May 2021 00:48:34 -0700 (PDT)
Received: from agape.jhs ([5.171.81.18])
 by smtp.gmail.com with ESMTPSA id f7sm6273997edd.5.2021.05.22.00.48.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 May 2021 00:48:33 -0700 (PDT)
Date: Sat, 22 May 2021 09:48:31 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Subject: Re: [staging:staging-next 201/268]
 drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack frame
 size of 1120 bytes in function 'rtw_wep_encrypt'
Message-ID: <20210522074830.GA1523@agape.jhs>
References: <202105201711.QuzeTqRK-lkp@intel.com>
 <20210521142656.GA1409@agape.jhs>
 <YKgHy7ZNNxv/KMl8@archlinux-ax161>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YKgHy7ZNNxv/KMl8@archlinux-ax161>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8gTmF0aGFuLAoKT24gRnJpLCBNYXkgMjEsIDIwMjEgYXQgMTI6MTk6MzlQTSAtMDcwMCwg
TmF0aGFuIENoYW5jZWxsb3Igd3JvdGU6Cj4gSGkgRmFiaW8sCj4gCj4gT24gRnJpLCBNYXkgMjEs
IDIwMjEgYXQgMDQ6MjY6NTdQTSArMDIwMCwgRmFiaW8gQWl1dG8gd3JvdGU6Cj4gPiBIaSByb2Jv
dCwKPiA+IAo+ID4gT24gVGh1LCBNYXkgMjAsIDIwMjEgYXQgMDU6MDM6MTRQTSArMDgwMCwga2Vy
bmVsIHRlc3Qgcm9ib3Qgd3JvdGU6Cj4gPiA+IHRyZWU6ICAgaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZ3JlZ2toL3N0YWdpbmcuZ2l0IHN0YWdpbmctbmV4
dAo+ID4gPiBoZWFkOiAgIGI5ZjM4ZTkxM2E5MjZiNDU1ZTUwNDhhOTVmNTNhOTkzYjUxNTUwOWYK
PiA+ID4gY29tbWl0OiAxYjExZTg5M2VkYTA5MDdmYzliMjg2OTYyNzFlMmQ5YzQzMzdlNDJkIFsy
MDEvMjY4XSBzdGFnaW5nOiBydGw4NzIzYnM6IHJlcGxhY2UgcHJpdmF0ZSBhcmM0IGVuY3J5cHRp
b24gd2l0aCBpbi1rZXJuZWwgb25lCj4gPiA+IGNvbmZpZzogcG93ZXJwYzY0LXJhbmRjb25maWct
cjAxMS0yMDIxMDUyMCAoYXR0YWNoZWQgYXMgLmNvbmZpZykKPiA+ID4gY29tcGlsZXI6IGNsYW5n
IHZlcnNpb24gMTMuMC4wIChodHRwczovL2dpdGh1Yi5jb20vbGx2bS9sbHZtLXByb2plY3QgYmY5
ZWYzZWZhYTk5YzAyZTdiZmM0YzU3MjA3MzAxYjhkZTM5YTI3OCkKPiA+ID4gcmVwcm9kdWNlICh0
aGlzIGlzIGEgVz0xIGJ1aWxkKToKPiA+ID4gICAgICAgICB3Z2V0IGh0dHBzOi8vcmF3LmdpdGh1
YnVzZXJjb250ZW50LmNvbS9pbnRlbC9sa3AtdGVzdHMvbWFzdGVyL3NiaW4vbWFrZS5jcm9zcyAt
TyB+L2Jpbi9tYWtlLmNyb3NzCj4gPiA+ICAgICAgICAgY2htb2QgK3ggfi9iaW4vbWFrZS5jcm9z
cwo+ID4gPiAgICAgICAgICMgaW5zdGFsbCBwb3dlcnBjNjQgY3Jvc3MgY29tcGlsaW5nIHRvb2wg
Zm9yIGNsYW5nIGJ1aWxkCj4gPiA+ICAgICAgICAgIyBhcHQtZ2V0IGluc3RhbGwgYmludXRpbHMt
cG93ZXJwYzY0LWxpbnV4LWdudQo+ID4gPiAgICAgICAgICMgaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZ3JlZ2toL3N0YWdpbmcuZ2l0L2NvbW1pdC8/aWQ9
MWIxMWU4OTNlZGEwOTA3ZmM5YjI4Njk2MjcxZTJkOWM0MzM3ZTQyZAo+ID4gPiAgICAgICAgIGdp
dCByZW1vdGUgYWRkIHN0YWdpbmcgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvZ3JlZ2toL3N0YWdpbmcuZ2l0Cj4gPiA+ICAgICAgICAgZ2l0IGZldGNoIC0t
bm8tdGFncyBzdGFnaW5nIHN0YWdpbmctbmV4dAo+ID4gPiAgICAgICAgIGdpdCBjaGVja291dCAx
YjExZTg5M2VkYTA5MDdmYzliMjg2OTYyNzFlMmQ5YzQzMzdlNDJkCj4gPiA+ICAgICAgICAgIyBz
YXZlIHRoZSBhdHRhY2hlZCAuY29uZmlnIHRvIGxpbnV4IGJ1aWxkIHRyZWUKPiA+ID4gICAgICAg
ICBDT01QSUxFUl9JTlNUQUxMX1BBVEg9JEhPTUUvMGRheSBDT01QSUxFUj1jbGFuZyBtYWtlLmNy
b3NzIEFSQ0g9cG93ZXJwYzY0IAo+ID4gCj4gPiBjYW4ndCBjb21waWxlIHRoaXMsIEkgZ2V0IHRo
ZSBmb2xsb3dpbmcgZXJyb3I6Cj4gPiAKPiA+IG1ha2UgQ09ORklHX09GX0FMTF9EVEJTPXkgQ09O
RklHX0RUQz15IEhPU1RDQz0vaG9tZS9mYWJpby8wZGF5L2NsYW5nL2Jpbi9jbGFuZyBDQz0vaG9t
ZS9mYWJpby8wZGF5L2NsYW5nL2Jpbi9jbGFuZyBMRD0vaG9tZS9mYWJpby8wZGF5L2NsYW5nL2Jp
bi9sZC5sbGQgSE9TVExEPS9ob21lL2ZhYmlvLzBkYXkvY2xhbmcvYmluL2xkLmxsZCBBUj0vaG9t
ZS9mYWJpby8wZGF5L2NsYW5nL2Jpbi9sbHZtLWFyIE5NPS9ob21lL2ZhYmlvLzBkYXkvY2xhbmcv
YmluL2xsdm0tbm0gU1RSSVA9L2hvbWUvZmFiaW8vMGRheS9jbGFuZy9iaW4vbGx2bS1zdHJpcCBP
QkpEVU1QPS9ob21lL2ZhYmlvLzBkYXkvY2xhbmcvYmluL2xsdm0tb2JqZHVtcCBPQkpTSVpFPS9o
b21lL2ZhYmlvLzBkYXkvY2xhbmcvYmluL2xsdm0tc2l6ZSBSRUFERUxGPS9ob21lL2ZhYmlvLzBk
YXkvY2xhbmcvYmluL2xsdm0tcmVhZGVsZiBIT1NUQ1hYPS9ob21lL2ZhYmlvLzBkYXkvY2xhbmcv
YmluL2NsYW5nKysgSE9TVEFSPS9ob21lL2ZhYmlvLzBkYXkvY2xhbmcvYmluL2xsdm0tYXIgQ1JP
U1NfQ09NUElMRT1wb3dlcnBjLWxpbnV4LWdudS0gLS1qb2JzPTggTExWTV9JQVM9MSBBUkNIPXBv
d2VycGMgZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy8KPiA+ICAgQ0MgICAgICBzY3JpcHRzL21v
ZC9lbXB0eS5vCj4gPiBjbGFuZzogZXJyb3I6IHVuc3VwcG9ydGVkIGFyZ3VtZW50ICctbWU1MDAn
IHRvIG9wdGlvbiAnV2EsJwo+ID4gbWFrZVsxXTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxk
OjI3Mjogc2NyaXB0cy9tb2QvZW1wdHkub10gRXJyb3IgMQo+ID4gbWFrZVsxXTogKioqIEF0dGVz
YSBwZXIgaSBwcm9jZXNzaSBub24gdGVybWluYXRpLi4uLgo+ID4gbWFrZTogKioqIFtNYWtlZmls
ZToxMjI2OiBwcmVwYXJlMF0gRXJyb3IgMgo+ID4gCj4gPiBtb3Jlb3ZlciBJIGhhZCB0byBhZGQg
TExWTV9JQVM9MSwgYW5kIEFSQ0g9cG93ZXJwYzY0IGlzIG5vdCBhIHZhbGlkIGFyY2hpdGVjdHVy
ZSAodXNlZCBwb3dlcnBjIGluc3RlYWQpLgo+ID4gCj4gPiBDb3VsZCB5b3UgaGVscCBtZT8KPiA+
IAo+IAo+IFRoaXMgaXMgbm90IGEgY2xhbmcgc3BlY2lmaWMgaXNzdWUsIEkgd291bGQgbm90IGJv
dGhlciB3aXRoIHRyeWluZyB0bwo+IHVzZSB0aGUgYm90J3MgcmVwcm9kdWNlciBzdGVwcy4KPiAK
PiBJIGNhbiByZXByb2R1Y2UgaXQgd2l0aCBHQ0MgMTEuMS4wIHVzaW5nIHRoZSBmb2xsb3dpbmcg
Y29tbWFuZHM6Cj4gCj4gJCBtYWtlIC1za2oiJChucHJvYykiIEFSQ0g9aTM4NiBkZWZjb25maWcK
PiAKPiAkIHNjcmlwdHMvY29uZmlnIC1lIE1NQyAtZSBTVEFHSU5HIC1tIFJUTDg3MjNCUwo+IAo+
ICQgbWFrZSAtc2tqIiQobnByb2MpIiBBUkNIPWkzODYgb2xkZGVmY29uZmlnIGRyaXZlcnMvc3Rh
Z2luZy9ydGw4NzIzYnMvCj4gZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19zZWN1
cml0eS5jOiBJbiBmdW5jdGlvbiDigJhydHdfd2VwX2VuY3J5cHTigJk6Cj4gZHJpdmVycy9zdGFn
aW5nL3J0bDg3MjNicy9jb3JlL3J0d19zZWN1cml0eS5jOjkxOjE6IHdhcm5pbmc6IHRoZSBmcmFt
ZSBzaXplIG9mIDEwODQgYnl0ZXMgaXMgbGFyZ2VyIHRoYW4gMTAyNCBieXRlcyBbLVdmcmFtZS1s
YXJnZXItdGhhbj1dCj4gICAgOTEgfCB9Cj4gICAgICAgfCBeCj4gZHJpdmVycy9zdGFnaW5nL3J0
bDg3MjNicy9jb3JlL3J0d19zZWN1cml0eS5jOiBJbiBmdW5jdGlvbiDigJhydHdfd2VwX2RlY3J5
cHTigJk6Cj4gZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d19zZWN1cml0eS5jOjEy
ODoxOiB3YXJuaW5nOiB0aGUgZnJhbWUgc2l6ZSBvZiAxMDYwIGJ5dGVzIGlzIGxhcmdlciB0aGFu
IDEwMjQgYnl0ZXMgWy1XZnJhbWUtbGFyZ2VyLXRoYW49XQo+ICAgMTI4IHwgfQo+ICAgICAgIHwg
Xgo+IGRyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfc2VjdXJpdHkuYzogSW4gZnVu
Y3Rpb24g4oCYcnR3X3RraXBfZW5jcnlwdOKAmToKPiBkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2Jz
L2NvcmUvcnR3X3NlY3VyaXR5LmM6NTMxOjE6IHdhcm5pbmc6IHRoZSBmcmFtZSBzaXplIG9mIDEx
MTIgYnl0ZXMgaXMgbGFyZ2VyIHRoYW4gMTAyNCBieXRlcyBbLVdmcmFtZS1sYXJnZXItdGhhbj1d
Cj4gICA1MzEgfCB9Cj4gICAgICAgfCBeCj4gZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9jb3Jl
L3J0d19zZWN1cml0eS5jOiBJbiBmdW5jdGlvbiDigJhydHdfdGtpcF9kZWNyeXB04oCZOgo+IGRy
aXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfc2VjdXJpdHkuYzo2MzM6MTogd2Fybmlu
ZzogdGhlIGZyYW1lIHNpemUgb2YgMTA4NCBieXRlcyBpcyBsYXJnZXIgdGhhbiAxMDI0IGJ5dGVz
IFstV2ZyYW1lLWxhcmdlci10aGFuPV0KPiAgIDYzMyB8IH0KPiAgICAgICB8IF4KCkkgY291bGQg
bm90IGdldCB0aGVzZSB3YXJuaW5ncyBpbiBhIHg4Nl82NCBidWlsZCwgc28gSSB0cmllZAp0byBy
ZXByb2R1Y2UgZXhhY3RseSB3aGF0IHRoZSByb2JvdCBzYXlzLiBJIHNob3VsZCBoYXZlIHRyaWVk
CnNpbXBseSBhbiBpMzg2IGJ1aWxkIDopCgo+IAo+IFlvdXIgY29tbWl0IGludHJvZHVjZWQgdGhp
cyBiZWNhdXNlIHRoZSBzaXplIG9mIHRoZSBhcmM0X2N0eCBzdHJ1Y3R1cmUKPiBpcyAxMDMyIGJ5
dGVzIHNvIGFsbG9jYXRpbmcgaXQgb24gdGhlIHN0YWNrIHdpbGwgY2F1c2UgaXQgdG8gZ28gb3Zl
ciB0aGUKPiAzMi1iaXQgbGltaXQgb2YgMTAyNCBieXRlcy4gVGhlIHByZXZpb3VzIGFyYzRjb250
ZXh0IHdhcyBvbmx5IDI2NCBieXRlcy4KPiBGb3IgdGhhdCBsYXJnZSBvZiBzdHJ1Y3R1cmUsIEkg
d291bGQgcmVjb21tZW5kIGFsbG9jYXRpbmcgaXQgb24gdGhlIGhlYXAKPiB3aXRoIGt6YWxsb2Mo
KSBhbmQgZnJlZWluZyB3aXRoIGtmcmVlX3NlbnNpdGl2ZSgpLgoKSSBoYXZlIGFscmVhZHkgSSBm
aXhlZCBpdCBieSBwdXR0aW5nIHR3byBhcmM0X2N0eCBmaWVsZCBpbiBzZWN1cml0eV9wcml2IHN0
cnVjdCB3aXRob3V0CmxvY2FsbHkgYWxsb2NhdGluZyBlYWNoIHRpbWUgZW5jcnlwdGlvbi1kZWNy
eXB0aW9uIGZ1bmN0aW9ucyBhcmUgY2FsbGVkLgpIb3BlIHRoaXMgaXMgZ29vZC4uLgoKPiAKPiBD
aGVlcnMsCj4gTmF0aGFuCgp0aGFuayB5b3UgZm9yIGhlbHAsCgpmYWJpbwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
