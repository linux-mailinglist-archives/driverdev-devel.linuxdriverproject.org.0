Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B15877311
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Mar 2024 19:18:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAF9140785;
	Sat,  9 Mar 2024 18:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ScwHe2KsARGV; Sat,  9 Mar 2024 18:18:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D80FB40786
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D80FB40786;
	Sat,  9 Mar 2024 18:18:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E416A1BF47A
 for <devel@linuxdriverproject.org>; Sat,  9 Mar 2024 18:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFAEE403AE
 for <devel@linuxdriverproject.org>; Sat,  9 Mar 2024 18:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6z17Frkel4zS for <devel@linuxdriverproject.org>;
 Sat,  9 Mar 2024 18:18:11 +0000 (UTC)
X-Greylist: delayed 17377 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 09 Mar 2024 18:18:10 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E887E40359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E887E40359
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=210.154.211.2;
 helo=mwp-bld-mts-004c1.ocn.ad.jp; envelope-from=skamei@hikari-net.co.jp;
 receiver=<UNKNOWN> 
Received: from mwp-bld-mts-004c1.ocn.ad.jp (mwp-bld-mts-004c1.ocn.ad.jp
 [210.154.211.2])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E887E40359
 for <devel@driverdev.osuosl.org>; Sat,  9 Mar 2024 18:18:10 +0000 (UTC)
Received: from cmn-spm-mts-001c1.ocn.ad.jp (cmn-spm-mts-001c1.ocn.ad.jp
 [153.153.67.130])
 by mwp-bld-mts-004c1.ocn.ad.jp (Postfix) with ESMTP id 5D777246E1F7
 for <devel@driverdev.osuosl.org>; Sat,  9 Mar 2024 22:28:30 +0900 (JST)
Received: from oa-arf-ucb053.ocn.ad.jp ([153.149.142.199])
 by cmn-spm-mts-001c1.ocn.ad.jp with ESMTP
 id iwkYrsqVhDXd9iwkYr7aJs; Sat, 09 Mar 2024 22:28:30 +0900
X-BIZ-RELAY: yes
Received: from oa-archive05.ocn.ad.jp (localhost [127.0.0.1])
 by oa-arf-ucb053.ocn.ad.jp (Postfix) with ESMTP id 2417E6C02C0
 for <devel@driverdev.osuosl.org>; Sat,  9 Mar 2024 22:28:30 +0900 (JST)
Received: from mgw-vc-mts-007c1.ocn.ad.jp ([153.138.238.83]) by m-FILTER with
 ESMTP; Sat, 9 Mar 2024 22:28:30 +0900
Received: from mwp-sdgw-mts-008c1.ocn.ad.jp ([122.28.88.75])
 by mgw-vc-mts-007c1.ocn.ad.jp with ESMTP
 id iwkQrFbqL9fcfiwkQrhdsJ; Sat, 09 Mar 2024 22:28:22 +0900
Received: from c15pes1g.mwprem.net (c15pes1g.mwprem.net [122.17.164.198])
 by mwp-sdgw-mts-008c1.ocn.ad.jp (Postfix) with SMTP id 40BCE8000440;
 Sat,  9 Mar 2024 22:28:22 +0900 (JST)
ARC-Seal: i=1; a=rsa-sha256; d=mwprem.net; s=default; t=1709990902; cv=none;
 b=EphNj5YPwjnZl8a4N1G+HTHr+7zESA2jXqTYyks/08l3MIwf468cVHHviDLpnPqFvvTOn/50b+8VHHvG5BdAX2yKTYVWc3QzU5lMrmHDpjIqIjjsWvu7zcd02/yDyVetxz3qLH+smt3yJuqk0rUb8oKCffUlCm7VU6sZVkNACzY=
ARC-Message-Signature: i=1; a=rsa-sha256; d=mwprem.net; s=default;
 t=1709990902; c=relaxed/relaxed;
 bh=F/dF+vnQhssMaNRNkzkSQ4+a1B08I6ehSpLZkwqqR4I=;
 h=DKIM-Signature:MIME-Version:Subject:To:From:Date:Message-Id;
 b=AeHP4M2o0I7QxcwV4iQSkduUk2MCEISCShZr2Qu43b87Vfb07TTiQX3OTllrX7De/irmqVsiCnRfR1qTzORjmZhRuYpO4ECmzQQghAZYFAExDhkZ1rFaMSu9JMqLbRE03/35YhlX62m0pdvlYmu6VOfmue1sZBI+B9re2aW1c/E=
ARC-Authentication-Results: i=1; c15pes1g.mwprem.net;
 arc=none smtp.client-ip=105.163.1.13
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?q?RE=3AEtes-vous_toujours_int=C3=A9ress=C3=A9_par_cette_subventio?=
 =?utf-8?b?biA/?=
To: Recipients <skamei@hikari-net.co.jp>
From: Mr Tom Huddleston< skamei@hikari-net.co.jp>
Date: Sat, 09 Mar 2024 05:28:03 -0800
Message-Id: <20240309132816.46B09C15FE6C@c15pes1g.mwprem.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hikari-net.co.jp; s=bizmw; t=1709990902;
 bh=F/dF+vnQhssMaNRNkzkSQ4+a1B08I6ehSpLZkwqqR4I=;
 h=Subject:To:From:Date:Reply-To:From;
 b=S3XV7R1t9O+gpZMw+3KR3JpZhVg/bbI5jkeqZFq+QW+GEhF/ggV5qhtqxR01XaB9B
 3LbtzBkCfbQGVGNXGQ7QVDc2RhQwHcY+YMd7hBUnxb1CVlV1Gyl0Rv7lZmoCB58iuW
 VjPlB7VaZzuKz2LRlyEvVA19j5U14FvG7aESHL3k=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=hikari-net.co.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=hikari-net.co.jp header.i=@hikari-net.co.jp
 header.a=rsa-sha256 header.s=bizmw header.b=S3XV7R1t
X-Mailman-Original-Authentication-Results: c15pes1g.mwprem.net; arc=none
 smtp.client-ip=105.163.1.13
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
Reply-To: tomhuddlestonjr4@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Q2hlciBhbWksCgoKSidlc3DDqHJlIHF1ZSB0dSB2YXMgYmllbiEgSmUgdm91cyDDqWNyaXMgcG91
ciBjb25uYcOudHJlIGxlIGRvbiBkZSA4MDAgMDAwLDAwIOKCrCBxdWkgdm91cyBhIMOpdMOpIGFj
Y29yZMOpLiBT4oCZaWwgeSBhIGRlcyBjaGFuZ2VtZW50cyBvdSBzaSB2b3VzIGF2ZXogZW52aXNh
Z8OpIHVuZSByw6l2aXNpb24gZHUgZmluYW5jZW1lbnQsIHZldWlsbGV6IG3igJllbiBpbmZvcm1l
ciBpbW3DqWRpYXRlbWVudC4gcGFyIGVtYWlsIGRpcmVjdGVtZW50CgogKHRvbWh1ZGRsZXN0b25q
cjFAZ21haWwuY29tKQoKRXQgc2kgY2V0dGUgc3VidmVudGlvbiBu4oCZZXN0IHBsdXMgbsOpY2Vz
c2FpcmUsIG7igJlow6lzaXRleiBwYXMgw6Agbm91cyBsZSBmYWlyZSBzYXZvaXIgYWZpbiBxdeKA
mWVsbGUgcHVpc3NlIMOqdHJlIHRyYW5zbWlzZSDDoCBxdWVscXXigJl1biBk4oCZYXV0cmUuCgpT
aSB2b3VzIGF2ZXogYmVzb2luIGQnYWlkZSBvdSBkJ2luZm9ybWF0aW9ucyBzdXBwbMOpbWVudGFp
cmVzLCBuJ2jDqXNpdGV6IHBhcyDDoCBtZSBjb250YWN0ZXIuCgpDb3JkaWFsZW1lbnQKClRvbSBI
dWRkbGVzdG9uIEpyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
