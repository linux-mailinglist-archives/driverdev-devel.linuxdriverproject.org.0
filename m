Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB06457EBA
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Nov 2021 15:30:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 252098274E;
	Sat, 20 Nov 2021 14:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OJiBQHaIr2ct; Sat, 20 Nov 2021 14:30:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D536824DD;
	Sat, 20 Nov 2021 14:30:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E8091BF404
 for <devel@linuxdriverproject.org>; Sat, 20 Nov 2021 14:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AFBE410B7
 for <devel@linuxdriverproject.org>; Sat, 20 Nov 2021 14:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIJGWNUab9FZ for <devel@linuxdriverproject.org>;
 Sat, 20 Nov 2021 14:30:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8946C4044E
 for <devel@driverdev.osuosl.org>; Sat, 20 Nov 2021 14:30:40 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id c32so57473478lfv.4
 for <devel@driverdev.osuosl.org>; Sat, 20 Nov 2021 06:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=UCbp25QPuDhkNZfceBx1cqh+Tk1jZClRT+kDAwA6qJo=;
 b=VgsuXePocKowZ5zp2QTfzasyx5kiQjsEONVTJUq9NPOxDRhLtshsGOCLuTLvJB61mg
 nXDuC7RjjKAHh01f+6NQU2ALZf4aLgyOn5Zm1hx3zj5WUFqhfGTf4cJ07NoEtNh7Kmr9
 xyYOEX8p9B+WXKSvZE8chHF4KQFC6ylRs02YPtM8VF8FLBpdOgQS3i0NPY8roHH3cAla
 9TqjWJgAqtOxOTmB0lG2XCOGG92EOOwO85MUk64feenSEDfcH2RmR1X7F3pSoFMWx2mU
 ho3WXyooYK8LVprw1WRqkSEUZg2smprTeBSfpwVQOC5MLZMBvXQ/e8o+7sIKMcDgE9Ia
 I3gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=UCbp25QPuDhkNZfceBx1cqh+Tk1jZClRT+kDAwA6qJo=;
 b=r2rLe5l+pB8oHG3YNZIKWwCCN/SaB6muDoAv6KXcE+dOvxQr6lcDjDbJ5GljzJp0nJ
 Nwm8uQF1Un6mGHznD1mqepXB82UxAOijh0im9tak48xbUxYrjnkOt6pIcN9sFsXpVCdQ
 RAOTxKtO8i6dbdd73P25y4CjUu1VDJWl8X0fV3ZPafLiJ+aC2QHiwhy20wGnLRvvWjDx
 vIIOjBxJVdNpdU74ypBQcmGyNSNiquIfgtHTy3ckcjJ6T7CokqtDdvMO6Ob7OsPU3303
 Hd0ID1v2dmn2eF6pk4kDgO1dm3d/T4NYWaWEavs0/WtmxS4Uw8TCQM1ba1bBMIxz0rjm
 XLYw==
X-Gm-Message-State: AOAM5303MGIK3FmnjTLYkrwUBgKAaNLSjbPC0krC3kJ0rQP8PyL+HBqJ
 NOH0lectmRu5NId+V3yNhMgmkES76NGnyD2P2Q0=
X-Google-Smtp-Source: ABdhPJwIlKj6ENn6Vca7w/RJbXxFawOtWcbREcA6QYmqLH+xPb8SMiP07pfn1q6HpbRxWQmzounkIkcokJ3NtRxkjcA=
X-Received: by 2002:a05:6512:3b13:: with SMTP id
 f19mr39886787lfv.321.1637418638244; 
 Sat, 20 Nov 2021 06:30:38 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:3499:0:0:0:0 with HTTP; Sat, 20 Nov 2021 06:30:37
 -0800 (PST)
From: "Mrs. Samiratou Idrissa," <reverendsistermercyandrew010@gmail.com>
Date: Sat, 20 Nov 2021 06:30:37 -0800
Message-ID: <CAHEbwFHDXP1ewyVdZDbUooCtK2HvVK4zSUdtGCopX-gHFym_xw@mail.gmail.com>
Subject: Attn: Notice Your Atm visa card Funds Tracking Number Has Been
 Discover Here::
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
Reply-To: idrissamssamiratou2000ouagabf@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBCZW5lZmljaWFyeTsKCkkgYW0gTXJzLiBTYW1pcmF0b3UgSWRyaXNzYSwgVGhlIEJpYiBJ
bnRlcm5hdGlvbmFsIEJhbmssIEZpbmFuY2lhbApTZWNyZXRhcnk6IEkgd2lzaCB0byBpbmZvcm0g
eW91IGZvciB5b3VyIGtpbmQgbm90aWNlLCB0aGF0IHlvdXIgQXRtCnZpc2EgY2FyZCBmdW5kcyB3
b3J0aCAkMTAuNSBtaWxsaW9uIHVuaXRlZCBzdGF0ZXMgZG9sbGFycywgd2l0aCB0aGUKdHJhY2tp
bmcgbnVtYmVyIGhhcyBiZWVuIGRpc2NvdmVyIGhlcmUgZHVyaW5nIG91ciB2ZXJpZmljYXRpb24g
Y29udHJvbAppbiBvdXIgQmFuaywgd2h5IGNvbnRhY3RpbmcgeW91IGJlY2F1c2UgYWZ0ZXIgdGhl
IGJvYXJkIG9mIGRpcmVjdG9ycwptZWV0aW5ncyB1bmRlciB0aGUgYXV0aG9yaXR5IHN1cGVydmlz
aW9uIG9mIGludGVybmF0aW9uYWwKY29tbWlzc2lvbmVyc+KAmSBwYXltZW50IGNvbnRyb2xsZXIg
Y2VudGVyLiBJbiBQYXJ0IG9mIFdlc3QgQWZyaWNhbgpPdWFnYWRvdWdvdSBCdXJraW5hIEZhc286
CgpUaGVyZSBhcmUgZmluYWxseSBkZWNpZGVkIHRvIHJlbGVhc2UgYW5kIGlzc3VlIGRlbGl2ZXJp
bmcgb2YgeW91ciBBdG0KdmlzYSBjYXJkIGZ1bmRzIHZhbHVlZCBhdCAkMTAuNSBtaWxsaW9uIFVu
aXRlZCBTdGF0ZXMgZG9sbGFycyB3aXRoIHRoZQp0cmFja2luZyBudW1iZXJzLiBhbmQgc2VuZCBp
dCB0byB5b3VyIHJlc2lkZW50aWFsIGFkZHJlc3Mgb2YgeW91cgpjb3VudHJ5IGluIHlvdXIgbmFt
ZXMgaW5mb3JtYXRpb24gdGhyb3VnaCBjb3VyaWVyIGRlbGl2ZXJpbmcgY29tcGFueSwKYW5kIHVu
ZGVyc3RhbmQgdGhhdCBiZWZvcmUgd2UgY2FuIHByb2NlZWQgY29tbWVuY2UgYWhlYWQgd2l0aCB5
b3UgZm9yCnRoZSBkZWxpdmVyaW5nIG9mIHlvdXIgQXRtIHZpc2EgY2FyZCBmdW5kcyB0byB5b3Vy
IGRvb3Igc3RlcCwKClNvIHRoZXJlZm9yZSB5b3UgYXJlIHByb3Blcmx5IGFkdmljZSB1cmdlbnRs
eSByZXF1ZXN0aW5nIHlvdSB5b3VyIGZ1bGwKaW5mb3JtYXRpb24gZGV0YWlscyBvZiB5b3VyIGNv
dW50cnkgZGVzdGluYXRpb24gdG8gYXZvaWQgd3JvbmdseSwgIEFzCnNvb24gYXMgd2UgcmVjZWl2
ZSB5b3VyIGRldGFpbHMgb2YgeW91ciBob21lIGJhc2UsIHdlIHNoYWxsIGNvbW1lbmNlCnRoZSBw
cm9jZXNzIHRoYXQgd2lsbCBmYWNpbGl0YXRlIHRoZSByZWxlYXNlIG9mIHlvdXIgQXRtIHZpc2Eg
Y2FyZApmdW5kIHRyYWNraW5nIG51bWJlcnMgYW5kIHNlbmQgdG8geW91IHdpdGhvdXQgYW55IGZ1
cnRoZXIgZGVsYXksCgoxLiBZb3VyIGZ1bGwgbmFtZXM7CjIuICBQYXJjZWwgb3duZXIgcmVzaWRl
bnRpYWwgYWRkcmVzczsKMy4gWW91ciBkaXJlY3QgdGVsZXBob25lIGFuZCBmYXggbnVtYmVyczsK
NC4gWW91ciBhZ2U7CjUuIE9jY3VwYXRpb247CjYuIFlvdXIgbWFyaXRhbCBzdGF0dXM7CgpBbG9u
ZyB3aXRoIHlvdXIgbmF0aW9uYWxpdHkgcGFzc3BvcnQgb3IgaWRlbnRpdHkgY2FyZCwgYmVjYXVz
ZSB3ZSBoYXZlCmZpbmFsbHkgY29uY2x1ZGVkIHRvIGltbWVkaWF0ZWx5IHJlbGVhc2UgYW5kIGRl
bGl2ZXIgeW91ciBkaXNjb3ZlciBBdG0KdmlzYSBjYXJkIHRyYWNraW5nIG51bWJlciB0byB5b3Vy
IGRlc3RpbmF0aW9uIG9mIHlvdXIgZG9vciBzdGVwLiBXZQpoYXZlIHJlY2VpdmVkIGEgc2lnbmFs
IGZyb20gdGhlIFN3aXNzIFdvcmxkIEJhbmsgdG8gaW5mZWN0IHlvdXIKdHJhbnNmZXIgdG8geW91
IHdpdGhpbiBvbmUgd2VlaywgUGxlYXNlOiBkb27igJl0IHRha2UgdG9vIGxvbmcgdG8KcmVzcG9u
ZCB0aGlzIG1lc3NhZ2U6IFdhaXRpbmcgZm9yIHlvdXIgY29uY2VybiB0byByZWNlaXZlIHlvdXIg
QXRtCnZpc2EgY2FyZCB3aXRoIHRoZSB0cmFja2luZyBudW1iZXJzIGluIHlvdXIgaG9tZSBkb29y
IHN0ZXAgb2YgeW91cgpjb3VudHJ5LCBJIGtub3cgdGhlc2UgcnVsZXMgd2lsbCBoZWxwIHlvdSBm
ZWVsIGNvbmZpZGVudAoKWW914oCZcmUgdXJnZW50bHkgcmVzcG9uZGluZyB3ZSBiZSBBcHByZWNp
YXRlZDoKCllvdXJzIHNpbmNlcmVseSwKTXJzLiBTYW1pcmF0b3UgSWRyaXNzYSwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
