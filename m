Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AF1734C71
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Jun 2023 09:37:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DDF181F6D;
	Mon, 19 Jun 2023 07:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DDF181F6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6dwUNd5__5x; Mon, 19 Jun 2023 07:37:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 186DE81E92;
	Mon, 19 Jun 2023 07:37:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 186DE81E92
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C1F61BF5B5
 for <devel@linuxdriverproject.org>; Mon, 19 Jun 2023 07:37:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2482D41499
 for <devel@linuxdriverproject.org>; Mon, 19 Jun 2023 07:37:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2482D41499
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id srCCs70JrxEu for <devel@linuxdriverproject.org>;
 Mon, 19 Jun 2023 07:37:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FC244148D
Received: from mail.craftsplex.pl (mail.craftsplex.pl [162.19.155.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1FC244148D
 for <devel@driverdev.osuosl.org>; Mon, 19 Jun 2023 07:37:39 +0000 (UTC)
Received: by mail.craftsplex.pl (Postfix, from userid 1002)
 id 8B0E1230B5; Mon, 19 Jun 2023 07:36:32 +0000 (UTC)
Received: by mail.craftsplex.pl for <devel@driverdev.osuosl.org>;
 Mon, 19 Jun 2023 07:35:48 GMT
Message-ID: <20230619064501-0.1.6t.128vo.0.ee51orzeat@craftsplex.pl>
Date: Mon, 19 Jun 2023 07:35:48 GMT
From: "Kamil Tralewski" <kamil.tralewski@craftsplex.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.craftsplex.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=craftsplex.pl; s=mail; t=1687160256;
 bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
 h=Date:From:To:Subject:From;
 b=LTAWZZ+faVAcXj9zlgGPhxB9LDR2arfLygM9gULnDNk+Rju3L67NiSt0bzAz53i4c
 FzOPaZP/GW9uWQb/HolqUMzC2AQaOsUJGqMd8laFlAi5XGe+k9E45nhRqubFwTDYh3
 enQrQNbBthM6TORZ1Tyz0D3P7SYljIJQVQqBuKU8Yoti9WwcCXrnANccferYR4mwSS
 RgoUUqPQujSR/jkZVbanyGc+jiEbIHRqsuxTF8zA4G1RIUMlG19EMg8lhrakE4PfTF
 RjgAv5LMuQMtR9nDWVdT64y+ez+zdO4cdk1DvsB/r9ldnDv1Jqcjsff4b743vvWFcr
 8SFIHtYn2hbmQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=craftsplex.pl header.i=@craftsplex.pl
 header.a=rsa-sha256 header.s=mail header.b=LTAWZZ+f
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
