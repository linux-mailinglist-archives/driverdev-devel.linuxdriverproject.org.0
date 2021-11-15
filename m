Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F5444FC9E
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Nov 2021 01:48:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E826040121;
	Mon, 15 Nov 2021 00:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksnDlMqu4KRp; Mon, 15 Nov 2021 00:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45BD6400FD;
	Mon, 15 Nov 2021 00:48:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 360771BF977
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 00:48:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3124740015
 for <devel@linuxdriverproject.org>; Mon, 15 Nov 2021 00:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eFcb6a775M0N for <devel@linuxdriverproject.org>;
 Mon, 15 Nov 2021 00:48:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com
 [IPv6:2607:f8b0:4864:20::935])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4AE4D40001
 for <devel@driverdev.osuosl.org>; Mon, 15 Nov 2021 00:48:08 +0000 (UTC)
Received: by mail-ua1-x935.google.com with SMTP id p37so29645383uae.8
 for <devel@driverdev.osuosl.org>; Sun, 14 Nov 2021 16:48:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Wd83ufqq1kJkEn+Hkxr7W/erBVNC1WQEguDsy74kVw4=;
 b=EfSQoKVmaVp3IcERQ5RsqD0VpwQYaFQ+Wxx2pGKnbbvSpYkUGyaKhDYK0B0tWeWqLm
 zAhxuFoUJ0lJqXyS56GFclYJZX6/QjTlcIhrV07dtjepL5kGi4uryRN1XdWr3HuxyneZ
 NmRA0U5o35Alk0w5CvW9IFNJpOsYfyD5hOxKb4W3xqGM9cXDr5DsoySyFuOKZx0yDovC
 QQNZ8IdAwVPtDLDzu38aX8sQLVkOtxieXtRfmHegU4rJpToq0ZK8q0yyLyFpbFtlpwHr
 KOjgB1fmeC75sQYoovoh4YCCSTsSwrJyujKxy2O7yp/SuBbsWKZEjaZcI/aRi+XER8HK
 fhKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
 :to:content-transfer-encoding;
 bh=Wd83ufqq1kJkEn+Hkxr7W/erBVNC1WQEguDsy74kVw4=;
 b=H9Iavz8002ifVCEDh6RKsfSvEAd16R8JM/lX6Ln8qQ7HcUkFfqLf5/F6yBtmw7HdBD
 UU/W4yJvky3Tecblajix7cFFhxMiCxK89a4vB+c09QbzG6phXTTT1qbO/Bab/06oeahN
 aWW1ji1zBRAGNmlaVtMP6oiUdecIcWFWhu964mdPJ9YeBkIOdTvpf3z0txMVwtXw5N7I
 qDexAqRccmp6wXV7XSwgaphDw8UprtI30jDaer8TVYREOFHdTuReLvJ7IvA/QaJz/TPp
 2vMRs9xhcrh9vcmdlkdxlLlTSXgqeghV80NA+3WvDXYG8v9OZu9A7KLLI9mgR4lP7eUb
 obug==
X-Gm-Message-State: AOAM5314CqRCl24z+1xI8c7KzOb5Pwmidn+SFPdB38IxxeDYI/L3owW2
 oWmQ6PP4Jcn9+7R5v/Ls+jFu15qUPqDHmuj3rmY=
X-Google-Smtp-Source: ABdhPJz59pWknF7rOVmWLAHazm0caYL38fr8ISgo2TS70VVloG+Oz2hdtD1WIlkgLzLjTGoZepjHXv/PDZLRId1BBdk=
X-Received: by 2002:ab0:3359:: with SMTP id h25mr51695176uap.59.1636937287063; 
 Sun, 14 Nov 2021 16:48:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:612c:10d1:b0:238:8532:4047 with HTTP; Sun, 14 Nov 2021
 16:48:06 -0800 (PST)
From: "Mr. Abderazack Zebdani" <azebdani13@gmail.com>
Date: Sun, 14 Nov 2021 16:48:06 -0800
X-Google-Sender-Auth: 708A8BavhzgcmkKoStTe7D5TsMQ
Message-ID: <CAOPoy6G1_Dse9wy+T8F6e+puFW3TU6tPnM6WqdzF5Z0QSKSGUg@mail.gmail.com>
Subject: Hope all is well with you and your family!
To: undisclosed-recipients:;
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SG9wZSBhbGwgaXMgd2VsbCB3aXRoIHlvdSBhbmQgeW91ciBmYW1pbHkhCgpHcmVldGluZ3MgbXkg
ZGVhciwgUGxlYXNlIHBlcm1pdCBtZSB0byBpbnRyb2R1Y2UgbXlzZWxmLCBJIGNhbWUgYWNyb3Nz
CnlvdXIgZS1tYWlsIHByaW9yIHRvIGEgcHJpdmF0ZSBzZWFyY2ggd2hpbGUgaW4gbmVlZCBvZiB5
b3VyCmFzc2lzdGFuY2UuIE15IG5hbWUgaXMgTXIuIEFiZGVyYXphY2sgWmViZGFuaSwgZnJvbSBC
dXJraW5hIEZhc28sIEkKd29yayBpbiBCYW5rIE9mIEFmcmljYSAoQk9BKSBhcyBUZWxleCBNYW5h
Z2VyLCBwbGVhc2Ugc2VlIHRoaXMgYXMgYQpjb25maWRlbnRpYWwgbWVzc2FnZSBhbmQgZG8gbm90
IHJldmVhbCBpdCB0byBhbm90aGVyIHBlcnNvbiBhbmQgbGV0IG1lCmtub3cgd2hldGhlciB5b3Ug
Y2FuIGJlIG9mIGFzc2lzdGFuY2UgcmVnYXJkaW5nIG15IHByb3Bvc2FsIGJlbG93CmJlY2F1c2Ug
aXQgaXMgdG9wIHNlY3JldC4KCk5ldmVydGhlbGVzcywgSSB3YW50IHlvdSB0byB1bmRlcnN0YW5k
IHRoYXQgdGhlcmUgYXJlIHN0aWxsIGdlbnVpbmUKYW5kIGxlZ2l0aW1hdGUgYnVzaW5lc3MgY2xh
c3MgcGVyc29ucyBpbiB0aGUgaW50ZXJuZXQgd29ybGQgdG9kYXkgc28gSQphbSBhc3N1cmluZyB5
b3UgdGhhdCB0aGlzIHRyYW5zYWN0aW9uIGlzIDEwMCUgZ2VudWluZS4KCkkgYW0gYWJvdXQgdG8g
cmV0aXJlIGZyb20gYWN0aXZlIEJhbmtpbmcgc2VydmljZSB0byBzdGFydCBhIG5ldyBsaWZlCmJ1
dCBJIGFtIHNrZXB0aWNhbCB0byByZXZlYWwgdGhpcyBwYXJ0aWN1bGFyIHNlY3JldCB0byBhIHN0
cmFuZ2VyLiBZb3UKbXVzdCBhc3N1cmUgbWUgdGhhdCBldmVyeXRoaW5nIHdpbGwgYmUgaGFuZGxl
ZCBjb25maWRlbnRpYWxseSBiZWNhdXNlCndlIGFyZSBub3QgZ29pbmcgdG8gc3VmZmVyIGFnYWlu
IGluIGxpZmUuIEl0IGhhcyBiZWVuIDEwIHllYXJzIG5vdwp0aGF0IG1vc3Qgb2YgdGhlIGdyZWVk
eSBBZnJpY2FuIFBvbGl0aWNpYW5zIHVzZWQgb3VyIGJhbmsgdG8gbGF1bmRlcgptb25leSBvdmVy
c2VhcyB0aHJvdWdoIHRoZSBoZWxwIG9mIHRoZWlyIFBvbGl0aWNhbCBhZHZpc2Vycy4gTW9zdCBv
Zgp0aGUgZnVuZHMgd2hpY2ggdGhleSB0cmFuc2ZlcnJlZCBvdXQgb2YgdGhlIHNob3JlcyBvZiBB
ZnJpY2Egd2VyZSBnb2xkCmFuZCBvaWwgbW9uZXkgdGhhdCB3YXMgc3VwcG9zZWQgdG8gaGF2ZSBi
ZWVuIHVzZWQgdG8gZGV2ZWxvcCB0aGUKY29udGluZW50LiBUaGVpciBQb2xpdGljYWwgYWR2aXNl
cnMgYWx3YXlzIGluZmxhdGVkIHRoZSBhbW91bnRzIGJlZm9yZQp0cmFuc2ZlcnJpbmcgdG8gZm9y
ZWlnbiBhY2NvdW50cywgc28gSSBhbHNvIHVzZWQgdGhlIG9wcG9ydHVuaXR5IHRvCmRpdmVydCBw
YXJ0IG9mIHRoZSBmdW5kcyBoZW5jZSBJIGFtIGF3YXJlIHRoYXQgdGhlcmUgaXMgbm8gb2ZmaWNp
YWwKdHJhY2Ugb2YgaG93IG11Y2ggd2FzIHRyYW5zZmVycmVkIGFzIGFsbCB0aGUgYWNjb3VudHMg
dXNlZCBmb3Igc3VjaAp0cmFuc2ZlcnMgd2VyZSBiZWluZyBjbG9zZWQgYWZ0ZXIgdHJhbnNmZXIu
IEkgYWN0ZWQgYXMgdGhlIEJhbmsKT2ZmaWNlciB0byBtb3N0IG9mIHRoZSBwb2xpdGljaWFucyBh
bmQgd2hlbiBJIGRpc2NvdmVyZWQgdGhhdCB0aGV5CndlcmUgdXNpbmcgbWUgdG8gc3VjY2VlZCBp
biB0aGVpciBncmVlZHkgYWN0OyBJIGFsc28gY2xlYW5lZCBzb21lIG9mCnRoZWlyIGJhbmtpbmcg
cmVjb3JkcyBmcm9tIHRoZSBCYW5rIGZpbGVzIGFuZCBubyBvbmUgY2FyZWQgdG8gYXNrIG1lCmJl
Y2F1c2UgdGhlIG1vbmV5IHdhcyB0b28gbXVjaCBmb3IgdGhlbSB0byBjb250cm9sLCBUaGV5IGxh
dW5kZXJlZApvdmVyICQ1YmlsbGlvbiBEb2xsYXJzIGR1cmluZyB0aGUgcHJvY2Vzcy4KCkJlZm9y
ZSBJIHNlbmQgdGhpcyBtZXNzYWdlIHRvIHlvdSwgSSBoYXZlIGFscmVhZHkgZGl2ZXJ0ZWQKKCQx
MC41bWlsbGlvbiBEb2xsYXJzKSB0byBhbiBlc2Nyb3cgYWNjb3VudCBiZWxvbmdpbmcgdG8gbm8g
b25lIGluIHRoZQpiYW5rLiBUaGUgYmFuayBpcyBhbnhpb3VzIG5vdyB0byBrbm93IHdobyB0aGUg
YmVuZWZpY2lhcnkgdG8gdGhlIGZ1bmRzCmlzLCBiZWNhdXNlIHRoZXkgaGF2ZSBtYWRlIGEgbG90
IG9mIHByb2ZpdHMgd2l0aCB0aGUgZnVuZHMuIEl0IGlzIG1vcmUKdGhhbiBFaWdodCB5ZWFycyBu
b3csIEkgZG9u4oCZdCB3YW50IHRvIHJldGlyZSBmcm9tIHRoZSBiYW5rIHdpdGhvdXQKdHJhbnNm
ZXJyaW5nIHRoZSBmdW5kcyB0byBhIGZvcmVpZ24gYWNjb3VudCwgSSBvbmx5IHdhbnQgeW91IHRv
IGFzc2lzdAptZSBieSBwcm92aWRpbmcgYSByZWxpYWJsZSBiYW5rIGFjY291bnQgd2hlcmUgdGhl
IGZ1bmRzIGNhbiBiZQp0cmFuc2ZlcnJlZC4gVGhlIG1vbmV5IHdpbGwgYmUgc2hhcmVkIDYwJSBm
b3IgbWUgYW5kIDQwJSBmb3IgeW91LgpUaGVyZSBpcyBubyBvbmUgY29taW5nIHRvIGFzayB5b3Ug
YWJvdXQgdGhlIGZ1bmRzIGJlY2F1c2UgSSBzZWN1cmVkCmV2ZXJ5dGhpbmcuCgpZb3UgYXJlIG5v
dCB0byBmYWNlIGFueSBkaWZmaWN1bHRpZXMgb3IgbGVnYWwgaW1wbGljYXRpb25zIGFzIEkgYW0K
Z29pbmcgdG8gaGFuZGxlIHRoZSB0cmFuc2ZlciBwZXJzb25hbGx5LiBJZiB5b3UgYXJlIGNhcGFi
bGUgb2YKcmVjZWl2aW5nIHRoZSBmdW5kcywgZG8gbGV0IG1lIGtub3cgaW1tZWRpYXRlbHkgdG8g
ZW5hYmxlIG1lIHRvIGdpdmUKeW91IGRldGFpbGVkIGluZm9ybWF0aW9uIG9uIHdoYXQgdG8gZG8u
IEZvciBtZSwgSSBhbSBsb29raW5nIGZvcndhcmQKdG8gaGVhcmluZyBmcm9tIHlvdSBzb29uLgoK
VGhhbmtzIHdpdGggYWxsIG15IGJlc3QgcmVnYXJkcy4KTXIuIEFiZGVyYXphY2sgWmViZGFuaS4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
