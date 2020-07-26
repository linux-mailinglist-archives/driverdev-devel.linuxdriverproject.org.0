Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E3F22E1FB
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 20:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE3932155B;
	Sun, 26 Jul 2020 18:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SF9xLpEC5CpU; Sun, 26 Jul 2020 18:30:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5850920534;
	Sun, 26 Jul 2020 18:30:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 88A331BF314
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 18:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 82F5A87929
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 18:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tkqg110XTUW0 for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 18:30:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C32CF87831
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 18:30:03 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id a9so7920518pjd.3
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 11:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=WGV4I1F24zGyDcgOFIAM1fKYXa7cDhdo3lPZzJ+IeHU=;
 b=SQdhQX7LOSO8S52kUprbIGF3FK5tDE4p2OCregx1V6MT1FfKnSnp2QFVAYgSStcFcL
 b75kah/jFr6FFhZAhR0/VGP4zcvxdxJ/HuwfKS9eaUiDXT/kvFQSyuQBt0rsaEoKGA5S
 oUQm/nB9H1g3OuaEe6UNYT+EK43eRdCCtcgKxGQymmCC03gsPkzUyVd6DJxIc3NsvOv2
 FsIDM+bQ7gYjKKP5iU0s4TU9ynzqiQ7w8mC9OeSoyV5sUaA8dQcss6BVbeK/t0xx3R/l
 T2Qudg8q2iaNC9IwTMNmZNC5RQVntTG0M64LIS8rXmpPRxjm1zvPB4O0kK+39+LCooed
 VkxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=WGV4I1F24zGyDcgOFIAM1fKYXa7cDhdo3lPZzJ+IeHU=;
 b=SG3BmnSiTIWR+RQDoU3yyoO3StApE6oKCBnywnhaflBlxKqEP2M28ym+jatu2xrzh2
 Qx4/wsYY1qswTszZHE0t+R7HokTuT2Tr2zY3i4iklpmylbymwiAfG0K0ANuR9n8Zk6Jg
 BIDk2UTgwuU2ky4by/SFDrw5VG+o4FXnQp2lGL03p3QdWp4SYU+ptRGTJS6cuGJCFgBM
 f23LBodkI6T7mGEiQhF1m8f+sNyzO/+QBKUmzY0XkUYrHICeOgNCDchR7YWb1nSCCg4k
 +oRE6vC6rNOYencmdTZVXuJ1XrnUmsN2i77yd2tPfoUg6ak/yiLDYDtutnnXitV8LbDb
 HLiA==
X-Gm-Message-State: AOAM5334HdHLhLo7bQfuLxAJOXDBBJMRAjFZVEHM37oB+nt7iAG75p4P
 4hDLMl7ywMkqmsZwIguYI6E=
X-Google-Smtp-Source: ABdhPJx9whbcHwiglTcBtEqIK+2T5/5MLdC9HEU/dfBdthL5uoNrZ8YerhCwocoAx/pDtMRDbDVYaA==
X-Received: by 2002:a17:90b:1812:: with SMTP id
 lw18mr9449844pjb.70.1595788203264; 
 Sun, 26 Jul 2020 11:30:03 -0700 (PDT)
Received: from [10.0.2.15] ([122.167.86.75])
 by smtp.gmail.com with ESMTPSA id f72sm12672731pfa.66.2020.07.26.11.30.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Jul 2020 11:30:02 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8723bs: include: Fix coding style errors
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg KH <gregkh@linuxfoundation.org>
References: <20200726080215.41501-1-aditya.jainadityajain.jain@gmail.com>
 <20200726082636.GA447282@kroah.com>
 <CAJAoDUjVBon2iiztdER82mHgJtVS6s5XYSajbCTne0KWAzoLvg@mail.gmail.com>
 <da3da8d5-7227-ad65-1449-de9fb46561c7@lwfinger.net>
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
Message-ID: <9aa9f610-41f2-18cb-e9e6-6980a965c3e3@gmail.com>
Date: Sun, 26 Jul 2020 23:59:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <da3da8d5-7227-ad65-1449-de9fb46561c7@lwfinger.net>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ck9uIDI2LzA3LzIwIDExOjMzIHBtLCBMYXJyeSBGaW5nZXIgd3JvdGU6Cj4gT24gNy8yNi8yMCAz
OjQwIEFNLCBBZGl0eWEgSmFpbiB3cm90ZToKPj4gT24gU3VuLCBKdWwgMjYsIDIwMjAgYXQgMTo1
NiBQTSBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4gCj4+IHdyb3RlOgo+Pj4K
Pj4+IE9uIFN1biwgSnVsIDI2LCAyMDIwIGF0IDAxOjMyOjE1UE0gKzA1MzAsIEFkaXR5YSBKYWlu
IHdyb3RlOgo+Pj4+IEZpeGluZyBFUlJPUjogImZvbyAqwqAgYmFyIiBzaG91bGQgYmUgImZvbyAq
YmFyIiBpbiBoYWxfcGh5X2NmZy5oCj4+Pj4gYXMgcmVwb3J0ZWQgYnkgY2hlY2twYXRjaC5wbAo+
Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQWRpdHlhIEphaW4gPGFkaXR5YS5qYWluYWRpdHlhamFp
bi5qYWluQGdtYWlsLmNvbT4KPj4+PiAtLS0KPj4+PiDCoCAuLi4vc3RhZ2luZy9ydGw4NzIzYnMv
aW5jbHVkZS9oYWxfcGh5X2NmZy5owqDCoMKgIHwgMTggCj4+Pj4gKysrKysrKysrLS0tLS0tLS0t
Cj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkK
Pj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2luY2x1ZGUv
aGFsX3BoeV9jZmcuaCAKPj4+PiBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvaW5jbHVkZS9o
YWxfcGh5X2NmZy5oCj4+Pj4gaW5kZXggNDE5ZGRiMDczM2FhLi5mZDVmMzc3YmFkNGYgMTAwNjQ0
Cj4+Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9pbmNsdWRlL2hhbF9waHlfY2Zn
LmgKPj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2luY2x1ZGUvaGFsX3BoeV9j
ZmcuaAo+Pj4+IEBAIC00Miw3ICs0Miw3IEBAIHUzMsKgwqDCoMKgwqDCoMKgwqAgRGF0YQo+Pj4+
Cj4+Pj4gwqAgdTMyCj4+Pj4gwqAgUEhZX1F1ZXJ5UkZSZWdfODcyM0IoCj4+Pj4gLXN0cnVjdCBh
ZGFwdGVyICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQWRhcHRlciwKPj4+PiArc3RydWN0IGFk
YXB0ZXLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICpBZGFwdGVyLAo+Pj4+IMKgIHU4wqDC
oMKgwqDCoMKgwqDCoMKgwqAgZVJGUGF0aCwKPj4+PiDCoCB1MzLCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIFJlZ0FkZHIsCj4+Pj4gwqAgdTMywqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBCaXRNYXNrCj4+Pgo+Pj4gSWNrLCB0aGVzZSBhcmUgYWxsIGhvcnJpZC7C
oCBIb3cgYWJvdXQganVzdCBtYWtpbmcgdGhlc2UgYWxsIG9uIGEgc2luZ2xlCj4+PiBsaW5lIGxp
a2UgbW9zdCBmdW5jdGlvbnMgaGF2ZSB0aGVtIGluc3RlYWQgb2YgdGhpcyBvbmUgY2xlYW51cD8K
Pj4+Cj4+PiBTYW1lIGZvciB0aGUgb3RoZXIgY2hhbmdlcyB5b3UgbWFkZSBpbiB0aGlzIGZpbGUu
Cj4+Pgo+Pj4gdGhhbmtzLAo+Pj4KPj4+IGdyZWcgay1oCj4+Cj4+IEFncmVlZC4gSSdsbCBjbGVh
biBpdCB1cC4KPgo+IFdoaWxlIHlvdSBhcmUgYXQgaXQsIGRyb3AgdGhlICJpbmNsdWRlOyIgZnJv
bSB0aGUgc3ViamVjdC4gRm9yIAo+IHN0YWdpbmcsIHRoZSB1c3VhbCBzdWJqZWN0IGlzIG9mIHRo
ZSBmb3JtICJzdGFnaW5nOiBkcml2ZXI6IHRoaW5nIAo+IGJlaW5nIGRvbmUiLiBJbiB5b3VyIGNh
c2UgInN0YWdpbmc6IHJ0bDg3MjNiczogRml4IGNvZGluZyBzdHlsZSAKPiBlcnJvcnMiLiBUaGUg
ZGlyZWN0b3J5IG9mIHRoZSBmaWxlcyBhcmUgbm90IHJlbGV2YW50LgpPaywgSSdsbCB0YWtlIGNh
cmUgb2YgdGhpcyBhbmQgdXBkYXRlIHRoZSBzdWJqZWN0IGluIHRoZSBuZXh0IHZlcnNpb24gb2Yg
CnRoZSBQYXRjaCBzZXJpZXMuCj4KPiBJIGFtIGFsc28gbm90IGluIGZhdm9yIG9mIHRoZSBsYXJn
ZSB3aGl0ZSBzcGFjZSBiZXR3ZWVuIHRoZSB2YXJpYWJsZSAKPiB0eXBlIGFuZCB0aGUgbmFtZSwg
YnV0IHRoYXQgaXMgcHJvYmFibHkgdGhlIHN1YmplY3Qgb2Ygc2VwYXJhdGUgcGF0Y2hlcy4KPgpJ
IHRoaW5rLCB0aGUgdjMgcGF0Y2ggc2VyaWVzIHJlc29sdmVzIHRoaXMuCj4gTGFycnkKPgoKUmVn
YXJkcywKCkFkaXR5YSBKYWluCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
