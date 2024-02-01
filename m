Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EBC845366
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Feb 2024 10:06:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEA6D4037E;
	Thu,  1 Feb 2024 09:06:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEA6D4037E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UFWDpzcfE9PY; Thu,  1 Feb 2024 09:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A72B7402B1;
	Thu,  1 Feb 2024 09:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A72B7402B1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A1271BF31A
 for <devel@linuxdriverproject.org>; Thu,  1 Feb 2024 09:06:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2112684504
 for <devel@linuxdriverproject.org>; Thu,  1 Feb 2024 09:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2112684504
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cN5uJFceZBvS for <devel@linuxdriverproject.org>;
 Thu,  1 Feb 2024 09:06:15 +0000 (UTC)
Received: from mail.commercesolutions.pl (unknown [162.19.155.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5826B84054
 for <devel@driverdev.osuosl.org>; Thu,  1 Feb 2024 09:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5826B84054
Received: by mail.commercesolutions.pl (Postfix, from userid 1002)
 id 151CD257CA; Thu,  1 Feb 2024 09:05:59 +0000 (UTC)
Received: by mail.commercesolutions.pl for <devel@driverdev.osuosl.org>;
 Thu,  1 Feb 2024 09:05:43 GMT
Message-ID: <20240201074500-0.1.bd.2hp2k.0.53gk66ipy0@commercesolutions.pl>
Date: Thu,  1 Feb 2024 09:05:43 GMT
From: "Kamil Tralewski" <kamil.tralewski@commercesolutions.pl>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.commercesolutions.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=commercesolutions.pl; 
 s=mail; t=1706778372;
 bh=PcMncQpBfIZCnTOfZJY5G1G+gaLn4c9QPfFvoXrE4rA=;
 h=Date:From:To:Subject:From;
 b=jypPfh3Opk6p/nj35DRr7HPJ+yD+MIQtvYBB0WpN4FRr79v+40mY1CgxRS1GtWjRs
 fmsD55PeNqqRMQYc3wcqQWff6Mn15TVAH6BAe8xxO2DTrar8OhrdACbDfjXBm5s91Y
 +1Z30VMgAMvgZ2NHQypxTj5eEDngPOhidogSj4q65dvt3ktc8ymBUw7ma9Of4PK8rU
 JzbRKjRArAhKLg2jf1bhRpR7hpYV7dHZrlz/ejoFssCceWZu4Si9diG3lkL27k2Dr9
 339cdUoj59GdjGgyuyidOFJQkh2B6lTjSm2p2dLPCdwXoAR3Deonpnb2bjNQiHz+DQ
 Yu1tr/C1o61TQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=commercesolutions.pl header.i=@commercesolutions.pl
 header.a=rsa-sha256 header.s=mail header.b=jypPfh3O
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
