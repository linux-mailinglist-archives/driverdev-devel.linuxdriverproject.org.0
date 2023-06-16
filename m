Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1A8732915
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Jun 2023 09:42:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7200783C8B;
	Fri, 16 Jun 2023 07:42:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7200783C8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qeZ3YgmuyKL1; Fri, 16 Jun 2023 07:42:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 409CD83C74;
	Fri, 16 Jun 2023 07:42:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 409CD83C74
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56A8A1BF852
 for <devel@linuxdriverproject.org>; Fri, 16 Jun 2023 07:42:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3027360E11
 for <devel@linuxdriverproject.org>; Fri, 16 Jun 2023 07:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3027360E11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HV1NR3_V3TgD for <devel@linuxdriverproject.org>;
 Fri, 16 Jun 2023 07:42:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DF5960DF4
Received: from mail.craftsplex.pl (mail.craftsplex.pl [162.19.155.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DF5960DF4
 for <devel@driverdev.osuosl.org>; Fri, 16 Jun 2023 07:42:01 +0000 (UTC)
Received: by mail.craftsplex.pl (Postfix, from userid 1002)
 id 16DE62489A; Fri, 16 Jun 2023 07:41:27 +0000 (UTC)
Received: by mail.craftsplex.pl for <devel@driverdev.osuosl.org>;
 Fri, 16 Jun 2023 07:40:42 GMT
Message-ID: <20230616064500-0.1.6s.128vo.0.51y848aopn@craftsplex.pl>
Date: Fri, 16 Jun 2023 07:40:42 GMT
From: "Kamil Tralewski" <kamil.tralewski@craftsplex.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.craftsplex.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=craftsplex.pl; s=mail; t=1686901318;
 bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
 h=Date:From:To:Subject:From;
 b=p3WL36i4L+rv3qVX5ysirjLQNEuMDosGKlzTP0V4vmdMGYIXWg9ig0EndGCOCRwHU
 TeJsRMsICl/FGhGldXlKq9jUC244uEJd1X8fddjb4opnORgOyMoT1u4cCVJJ8W2ZDZ
 8oKSx/42GWcyZ2uoqeMPKKWZI7ny6BUmHZuWDxI6F8kOjqUqCKTVjgsNaZ9d8x5DAe
 Jz0kgRLSZqJ6HubkZXoqZ/Ol3BNwP6ZRaEKMieJ84nUymPrEf4JguLv1pwmezmjwIs
 L8IkqkSwfbqH/S7eaSk86SVEmIJpO8zl15bC3YGF/W5jM1jFV8TZUeWr5cC5D3moEP
 Dv2Id5yYjs9UA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=craftsplex.pl header.i=@craftsplex.pl
 header.a=rsa-sha256 header.s=mail header.b=p3WL36i4
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
