Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A569175DD1
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 16:04:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00E718778E;
	Mon,  2 Mar 2020 15:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPRXqvXuqU6I; Mon,  2 Mar 2020 15:04:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4917E875F4;
	Mon,  2 Mar 2020 15:04:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6531A1BF39F
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 15:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5BFBB85D4B
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 15:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MvlagChyr7Jg for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 15:04:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6943385CE2
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 15:04:24 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id a12so11047988ljj.2
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 07:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OsxgYgsKphJDyuRREvQcBCxW+LOMW9YuhqtTDzyIanc=;
 b=sR5HyV6oXBFgipsb3ANiMlO3m5ZKXcTJRG44spcXmrm3FDiSyFsOPjc1oCYcz0S4+q
 Zy0/Wy3Vyznt+BF7js7FKTYwQHUP6+u8VXht705SHRioh9qBs0fxgZK6fMpyHC6E8Icq
 6jKE8GIroACzzGUyBr/hl9Ku0PBXswtudX1McI/vS0QunxqBkUqjO4ajROAj8u1PFGWT
 KbJdJ1I/m6E/pfW1Tbv97cXQPFOI9R5qxrZb1Meo2e7t6yhSl7cuCAV0HiDS/mafPBti
 pHMECofq9Qlgc+n6zvkJOfqkIxm+JrvidRotdWKWwJMZ+HszfSo9YLgka0NB8ZC7FQSK
 FERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OsxgYgsKphJDyuRREvQcBCxW+LOMW9YuhqtTDzyIanc=;
 b=QKp1sCdsrijouqMDn6ZBK0IQrFCGfWSP2XbvsXKRdYeXW2Eug8EJ0+2sSFYazqGeVp
 DEYQyjq54efGMITSa7SXc2QRp2skWsmWsX607bqt5VwxRvGu0yfQ+CPb53ST8w/gTR2j
 /5z/5zl7TwK9jClkZ2+nTDG/GfU6GbDp01RC+sMi8hMQLwjz8ZIuVKLMvfE7PlcSkWir
 7khLhEXeC434NaKaJqEjc9LwbltYlXGWKPU6BYxpBgpqv3Qdenal91DSon4wdzr67kcz
 bMT3nuHB3Qaql+yzxnfgIUrespAV7gGuB6AlAauaRoAsSGAysmfed6rmCM3cUeiyAb0x
 j0bA==
X-Gm-Message-State: ANhLgQ2xKVDrWhL28oeZSickti0IpjZYPO3HgB/8eBtcdSgwcu+Rw+A5
 VUex9z7uLBBhFL2H1I4fqMvhE3Q/
X-Google-Smtp-Source: ADFU+vtiyeT++BmeCxJab16/JiA7Sq6GAi7V95VfEd1lChxPAqxfx6XOoQi/iC91aKCTY3perxTq0w==
X-Received: by 2002:a05:651c:2c9:: with SMTP id
 f9mr4667824ljo.85.1583161462499; 
 Mon, 02 Mar 2020 07:04:22 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id r15sm11141676ljh.11.2020.03.02.07.04.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Mar 2020 07:04:21 -0800 (PST)
Subject: Re: [PATCH v1] media: staging: tegra-vde: Use
 devm_platform_ioremap_resource_byname()
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200227180915.9541-1-digetx@gmail.com>
 <20200302080456.GD4140@kadam>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <d748bf2c-e38c-dabb-59ad-39e14813e40a@gmail.com>
Date: Mon, 2 Mar 2020 18:04:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200302080456.GD4140@kadam>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDIuMDMuMjAyMCAxMTowNCwgRGFuIENhcnBlbnRlciDQv9C40YjQtdGCOgo+IE9uIFRodSwgRmVi
IDI3LCAyMDIwIGF0IDA5OjA5OjE1UE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4g
VGhpcyBoZWxwcyB0byBtYWtlIGNvZGUgY2xlYW5lciBhIHRhZC4KPiAKPiBQbGVhc2UgZG9uJ3Qg
c3RhcnQgdGhlIGNvbW1pdCBtZXNzYWdlIGluIHRoZSBtaWRkbGUgb2YgYSBzZW50ZW5jZS4KCkNv
dWxkIHlvdSBwbGVhc2UgY2xhcmlmeSB3aGF0IGRvIHlvdSBtZWFuIGJ5IHRoZSAibWlkZGxlIG9m
IGEgc2VudGVuY2UiPwpUaGUgY29tbWl0J3MgbWVzc2FnZSBkb2Vzbid0IHNvdW5kICJtaWRkbGUi
IHRvIG1lIGF0IGFsbC4KCj4gSXQgbG9va3MgbGlrZSB0aGlzIGZvciBzb21lIG9mIHVzOgo+IAo+
IGh0dHBzOi8vbWFyYy5pbmZvLz9sPWxpbnV4LWRyaXZlci1kZXZlbCZtPTE1ODI4MjcwMTQzMDE3
NiZ3PTIKClRoaXMgbGluayBwb2ludHMgdG8gdGhpcyBwYXRjaCwgSSBkb24ndCBxdWl0ZSB1bmRl
cnN0YW5kIHdoYXQgeW91J3JlCnRyeWluZyB0byBjb252ZXkgaGVyZS4KCj4gSSBnZW5lcmFsbHkg
cmVhZCB0aGUgc3ViamVjdCBvciB0aGUgZnVsbCBjb21taXQgbWVzc2FnZSBidXQgc2VsZG9tCj4g
Ym90aC4KClRoZSBjb21taXQncyB0aXRsZSBkZXNjcmliZXMgdGhlIGNoYW5nZSBicmllZmx5LCB3
aGlsZSB0aGUgbWVzc2FnZSBnaXZlcwphIHJhdGlvbmFsIGZvciB0aGUgY2hhbmdlLiBVc3VhbGx5
IHJldmlld2VyIHNob3VsZCBjb25zdWx0IHRoZSBjb2RlCmNoYW5nZXMgdGhlbXNlbHZlcyBmb3Ig
bW9yZSBkZXRhaWxzLgoKRG8geW91IGhhdmUgc29tZSBraW5kIG9mIGEgZW1haWwgZmlsdGVyIHRo
YXQgc2hvd3Mgb25seSB0aGUgY29tbWl0J3MKbWVzc2FnZT8gT3RoZXJ3aXNlIEknbSBub3Qgc3Vy
ZSB3aGF0J3MgdGhlIHByb2JsZW0uCgo+IE90aGVyd2lzZSB0aGUgcGF0Y2ggbG9va3MgdmVyeSBn
b29kLgoKVGhhbmtzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6
Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZl
cmRldi1kZXZlbAo=
