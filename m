Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20202812A6A
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Dec 2023 09:31:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88A8483BF4;
	Thu, 14 Dec 2023 08:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88A8483BF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8n-IbQl_gB_3; Thu, 14 Dec 2023 08:31:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 595D483C44;
	Thu, 14 Dec 2023 08:31:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 595D483C44
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 033BB1BF2CE
 for <devel@linuxdriverproject.org>; Thu, 14 Dec 2023 08:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D00CB605B1
 for <devel@linuxdriverproject.org>; Thu, 14 Dec 2023 08:31:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D00CB605B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o6NH7tOfNnwC for <devel@linuxdriverproject.org>;
 Thu, 14 Dec 2023 08:31:27 +0000 (UTC)
Received: from mail.commercesolutions.pl (unknown [162.19.155.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D39060598
 for <devel@driverdev.osuosl.org>; Thu, 14 Dec 2023 08:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D39060598
Received: by mail.commercesolutions.pl (Postfix, from userid 1002)
 id 3C23F242D0; Thu, 14 Dec 2023 08:31:08 +0000 (UTC)
Received: by mail.commercesolutions.pl for <devel@driverdev.osuosl.org>;
 Thu, 14 Dec 2023 08:30:54 GMT
Message-ID: <20231214074500-0.1.ai.27dop.0.b8fev7c86s@commercesolutions.pl>
Date: Thu, 14 Dec 2023 08:30:54 GMT
From: "Kamil Tralewski" <kamil.tralewski@commercesolutions.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.commercesolutions.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=commercesolutions.pl; 
 s=mail; t=1702542684;
 bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
 h=Date:From:To:Subject:From;
 b=cMYbBf+NUclh/L3bh7L0A7T076T6KhhjJOaah2OAVtMjkNQcHczBrIJUaTVISKMdL
 ud5fzxr1dw2LGn13TPqoakRXoXA+f6nmiiW21LlAetfWzy5dtzpUGFAoTNv9qyPI4f
 iscHjcIonScE7LVfzWU+eUmiRq02ZyJSXbDUc3GDDde5mPqv7sKHIaowSY9McW6gQO
 CAu4ACxxqJzr9EcHNbdRwxswl27JwUe/eV21gWXcG+DZOrTLCEQaRCMk6cMqivl58P
 cujvPs3Kdqd0wFoE9cfuVD72xJc7kCbVYBbGOiSJC5GGK7dC8PCrCnrqodyeT1uQVr
 CCOtOrHBruWOA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=commercesolutions.pl header.i=@commercesolutions.pl
 header.a=rsa-sha256 header.s=mail header.b=cMYbBf+N
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

RHppZcWEIGRvYnJ5LAoKemFwb3puYcWCZW0gc2nEmSB6IFBhxYRzdHdhIG9mZXJ0xIUgaSB6IHBy
enlqZW1ub8WbY2nEhSBwcnp5em5hasSZLCDFvGUgcHJ6eWNpxIVnYSB1d2FnxJkgaSB6YWNoxJlj
YSBkbyBkYWxzenljaCByb3ptw7N3LiAKClBvbXnFm2xhxYJlbSwgxbxlIG1vxbxlIG3Ds2fFgmJ5
bSBtaWXEhyBzd8OzaiB3a8WCYWQgdyBQYcWEc3R3YSByb3p3w7NqIGkgcG9tw7NjIGRvdHJ6ZcSH
IHogdMSFIG9mZXJ0xIUgZG8gd2nEmWtzemVnbyBncm9uYSBvZGJpb3Jjw7N3LiBQb3p5Y2pvbnVq
xJkgc3Ryb255IHd3dywgZHppxJlraSBjemVtdSBnZW5lcnVqxIUgxZt3aWV0bnkgcnVjaCB3IHNp
ZWNpLgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKUG96ZHJh
d2lhbQpLYW1pbCBUcmFsZXdza2kKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
