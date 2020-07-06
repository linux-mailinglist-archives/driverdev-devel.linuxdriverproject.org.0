Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB882153DF
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jul 2020 10:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A80A98868D;
	Mon,  6 Jul 2020 08:20:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbgqD4ULUDrd; Mon,  6 Jul 2020 08:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2064788557;
	Mon,  6 Jul 2020 08:20:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55E821BF2A1
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 08:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4C8EE203EA
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 08:20:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2cpvTxNlFx8B for <devel@linuxdriverproject.org>;
 Mon,  6 Jul 2020 08:20:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 090E02014A
 for <devel@driverdev.osuosl.org>; Mon,  6 Jul 2020 08:20:22 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id x9so1381794plr.2
 for <devel@driverdev.osuosl.org>; Mon, 06 Jul 2020 01:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uU0xlJFFa00TPVnoXEPqSp0oyV50ZErE/QACHMhe2N4=;
 b=wRznHkTxGCiQajCVNy9WSYCnQb05YHLCdtX7y70OCdpBfnc9TEVkeBRekT1E67LAFY
 34RkjoCc4z4mjEkXMPx598LDq1kUDFRvWLNoT9f1nRTpzIZLB0ZyAbY1Kk0vihaQ2UHz
 xBooI6oRjCCHVCocp+YFVVlBmLK5KSyc6ZB98i/zL3BLrvzvr4rA9o64sA2/o6BJnJD2
 pCAP0wAxts2lhzqzswEQLCB0oTnVpiQ87QK8hKNPRDkRgvxFpx5MXrzcZ/nQfoT1jvW3
 ZFGxsS9bpUe6dK1YXXbjgFaYQ+SdOXP/1vEvjebZGI3JaQX3C9tZRPe2XeNYvUTAVgjQ
 Cxrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uU0xlJFFa00TPVnoXEPqSp0oyV50ZErE/QACHMhe2N4=;
 b=bZIqSMSKtEJSkKkYnf5vP92S0mJ2YLTQfOCz0IliHUzgfyPRUGN2ajftqPZeyoET6H
 lTElXuXKUYrx7509vPYXlRBcjV2Yynwkn7xK4JySAIJCcmc8Mdu3/WNZAueNc073yUN0
 0RZ8p3SRvKSc6r0+1S/KdXGIPFPlYhvdInnIN/c+u4fEW4bk5IUcs58LnPR+eN/bWg8c
 KSOy7HRdCKnkoR0DkYFFsD+Mwo7ZVIrWkXRnBxZtXlqKRTbYGD9ldMB0NVBO/WtuvGwf
 tSfKhMcfk91v51sjxaNUqi/jbQib2FrZNibEGBbYPiSPqqDchGdk4poKFgBdjG+LACXA
 eZUw==
X-Gm-Message-State: AOAM530nRH6i5QDfd9eaxFWNI/dGa80xJr27v2ujgMZb8rN+N6BqN8tw
 I4kmhGTgVAQw6k0epOkaPuZujxQgIntGVN3bKADq4NLMwgM=
X-Google-Smtp-Source: ABdhPJw4Bfj4EQ8COBJIeo7D8VGRYlDADzKZonEBAoQVS2UeZtYYqk8AqEi+blrR221WwLcPoQik/mNFDEOYgtH6ncw=
X-Received: by 2002:a67:ca03:: with SMTP id z3mr27998411vsk.34.1594023203065; 
 Mon, 06 Jul 2020 01:13:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200623110000.31559-1-ajay.kathat@microchip.com>
 <20200629132612.nl6rfpihzlii6ilh@pali>
 <c23ca5da-b9db-5e98-94e4-edc84ded9611@microchip.com>
 <20200701075515.zypusfh4xazqu2fl@pali>
In-Reply-To: <20200701075515.zypusfh4xazqu2fl@pali>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 6 Jul 2020 10:12:46 +0200
Message-ID: <CAPDyKFpgXa+z_spubHWQ=2wJvJxA8sdJqgZfo0OvR6LSGE7NAQ@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] wilc1000: move out of staging
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, Ajay.Kathat@microchip.com
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Venkateswara.Kaja@microchip.com,
 Sripad.Balwadgi@microchip.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Nicolas Ferre <Nicolas.Ferre@microchip.com>,
 Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAxIEp1bCAyMDIwIGF0IDA5OjU1LCBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3Jn
PiB3cm90ZToKPgo+IE9uIFR1ZXNkYXkgMzAgSnVuZSAyMDIwIDAzOjE3OjAxIEFqYXkuS2F0aGF0
QG1pY3JvY2hpcC5jb20gd3JvdGU6Cj4gPiBPbiAyOS8wNi8yMCA2OjU2IHBtLCBQYWxpIFJvaMOh
ciB3cm90ZToKPiA+ID4gRVhURVJOQUwgRU1BSUw6IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVu
IGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdyB0aGUgY29udGVudCBpcyBzYWZlCj4gPiA+Cj4g
PiA+IE9uIFR1ZXNkYXkgMjMgSnVuZSAyMDIwIDExOjAwOjA0IEFqYXkuS2F0aGF0QG1pY3JvY2hp
cC5jb20gd3JvdGU6Cj4gPiA+PiBUaGlzIHBhdGNoIHNlcmllcyBpcyB0byByZXZpZXcgYW5kIG1v
dmUgd2lsYzEwMDAgZHJpdmVyIG91dCBvZiBzdGFnaW5nLgo+ID4gPj4gTW9zdCBvZiB0aGUgcmV2
aWV3IGNvbW1lbnRzIHJlY2VpdmVkIGluIFsxXSAmIFsyXSBhcmUgYWRkcmVzc2VkIGluIHRoZQo+
ID4gPj4gbGF0ZXN0IGNvZGUuCj4gPiA+PiBQbGVhc2UgcmV2aWV3IGFuZCBwcm92aWRlIHlvdXIg
aW5wdXRzLgo+ID4gPgo+ID4gPiBIZWxsbyBBamF5ISBDb3VsZCB5b3UgcGxlYXNlIG1vdmUgU0RJ
TyB2ZW5kb3IvZGV2aWNlIElEIGRlZmluaXRpb25zIGZyb20KPiA+ID4gZHJpdmVyIGNvZGUgd2ls
YzEwMDAvc2Rpby5jIHRvIGNvbW1vbiBmaWxlIGluY2x1ZGUvbGludXgvbW1jL3NkaW9faWRzLmg/
Cj4gPiA+Cj4gPgo+ID4gQ3VycmVudGx5LCB0aGUgd2lsYzEwMDAgZHJpdmVyIG1vdmVtZW50IGNo
YW5nZXMgYXJlIHByZXNlbnQgaW4gdG9waWMKPiA+IGJyYW5jaCBhbmQgeWV0IHRvIGJlIG1lcmdl
ZCB0byBtYXN0ZXIgYnJhbmNoLiBXb3VsZCBpdCBiZSBva2F5IHRvIHN1Ym1pdAo+ID4gdGhlIG5l
dyBwYXRjaCBvbmNlIGRyaXZlciBpcyBtZXJnZWQgdG8gJ3dpcmVsZXNzLWRyaXZlci1uZXh0JyBt
YXN0ZXIgYW5kCj4gPiBicmFuY2ggaXMgcHVsbGVkIGludG8gR3JlZydzIHN0YWdpbmcgcmVwby4K
Pgo+IEkgdGhpbmsgaXQgc2hvdWxkIGJlIE9LLiBCdXQgbWF5YmUgVWxmIGFzIG1haW50YWluZXIg
b2YgbW1jIHN1YnN5c3RlbQo+IGNvdWxkIGhhdmUgb3BpbmlvbiBvciByZWFjdCBvbiB0aGlzLgoK
VGhhdCBzaG91bGQgYmUgZmluZS4gSnVzdCBrZWVwIG1lIG9uIGNjIHNvIEkgY2FuIGFjayBpdC4g
UG90ZW50aWFsbHkKd2UgbWF5IGdldCBzb21lIG1lcmdlY29uZmxpY3QgYmV0d2VlbiB0aGUgdHJl
ZXMsIGJ1dCBsZXQncyByZXNvbHZlCnRoYXQgaWYvd2hlbiB0aGF0IGhhcHBlbnMuCgpLaW5kIHJl
Z2FyZHMKVWZmZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
