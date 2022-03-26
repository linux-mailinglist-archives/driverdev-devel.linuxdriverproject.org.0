Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 261914E80F2
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Mar 2022 13:56:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBE6682BBC;
	Sat, 26 Mar 2022 12:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xhEpkJKJfXu4; Sat, 26 Mar 2022 12:56:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9951D82B24;
	Sat, 26 Mar 2022 12:56:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C27BD1BF82D
 for <devel@linuxdriverproject.org>; Sat, 26 Mar 2022 12:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1355400E9
 for <devel@linuxdriverproject.org>; Sat, 26 Mar 2022 12:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=firstenglishco.com;
 domainkeys=pass (2048-bit key) header.from=the.sey@firstenglishco.com
 header.d=firstenglishco.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-AXvAvb1qWM for <devel@linuxdriverproject.org>;
 Sat, 26 Mar 2022 12:56:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from uncle.firstenglishco.com (uncle.firstenglishco.com
 [194.31.98.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B5DBF400E5
 for <devel@linuxdriverproject.org>; Sat, 26 Mar 2022 12:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=firstenglishco.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=the.sey@firstenglishco.com; bh=uqWYQX1H8p5hK/H3x4PESSlunQM=;
 b=PJOXeuhYgkehlWTOZboMSn1qLhRQgNsh5wj1uBinYZMqSY1h6Axr6DEgKcv411daZ9FKTdyogXBC
 1y8k0KBNtYe95MmFwS0kMWAdriYhKypaikN5K08P5MibucRfTnOQDXnZVGAmpWqiQj5TNjYjMyk0
 1At1TG4ec+7QUaQAFj31rGygABiOUewgzThSWG92CrLBw2uif3vkmF8o4Z6xGTst7o65BxXbYg3t
 Es5Zb28HvAMvgxSmYJM/VVoHvmtI3h4Fx84nBmmRNYem3FoFm6t46YkRlDpF3kJ0fGdfLzKd93Y6
 sqpOxWnRguHGaJKjRjiYvm2abwhzgQ4FsMm8gg==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=firstenglishco.com; 
 b=OG5FG7hR7Y6NP0Ez3jNxTKukQbRGcEDlrMZIpiiwXfXe+UannhnqMWCWh3j5JqTNEcDEd8udFSNK
 UGWfPacZGQgr72Lu6evofZLWx4td/b3bNAV5TqN1IJPSQVUq9NQ5D1pZRT6qG1umDCr2xQdYNPID
 ihZQuT5j6W6DH2090hWwhHm7FGYFDZZyBIbWm/N3zN74BKlzD5r6I1RqZOJcmZOCbRla4+Ms9vjR
 2T91DGjxA1+XmzRB3WlFgLzfkoEEIh6X3YBObS0fylYACy++EtoqxgZ4s/NsA6Y9gaC8UzN9UG4u
 F40v/2drjObQdEt5hXmQdh9gbWeJxH1d3hWZaw==;
From: the.sey@firstenglishco.com
To: devel@linuxdriverproject.org
Subject: OFFER.......
Date: 26 Mar 2022 13:56:22 +0100
Message-ID: <20220326135622.13D7967D9A7067C4@firstenglishco.com>
MIME-Version: 1.0
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
Reply-To: mukhametshinj@mail.ru
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmchZGV2ZWwgCgoKSG9wZSB5b3XigJlyZSBkb2luZyB3ZWxsPyBXZeKAmXJlIGxpY2Vu
c2VkIGFnZW50LCBvZmZpY2lhbGx5IApyZXByZXNlbnRpbmcgdGhlIGludGVyZXN0cyBvZiBhIHBy
aW5jaXBhbCBSZWZpbmVyeSBhbmQgb3RoZXIgCnJlcHV0YWJsZSBFbmQgU3VwcGxpZXJzIGluIHN1
cHBseWluZyBvZiBPaWwgZGVyaXZhdGl2ZXMgYW5kIEZ1ZWxzIApvZiBSdXNzaWFuIG9yaWdpbi4K
IApXZSBoYXZlIGF2YWlsYWJsZSBhbGxvY2F0aW9ucyBmb3IgbG9hZCBpbiBIb3VzdG9uLCBSb3R0
ZXJkYW0sIApDb3JwdXMgQ2hyaXN0aSBhbmQgd2l0aGluIHRoZSBSdXNzaWFuIHRlcnJpdG9yaWVz
LgogCkluIGFkZGl0aW9uLCB3ZSBjYW4gc3VwcGx5IGJvdGggb24gQ0lGLCBGT0IgYW5kIFRUTyBi
YXNpcy4KIApJZiB5b3UgaGF2ZSBuZWVkcyBhbmQgaW50ZXJlc3RlZCBmb3IgdGhlIHB1cmNoYXNl
IG9mIEZ1ZWxzIGFuZC9vciAKUGV0cm9sZXVtIHByb2R1Y3RzIG9mIFJ1c3NpYW4gb3JpZ2luLCBw
bGVhc2UgZG8gbm90IGhlc2l0YXRlIHRvIApyZXZlcnQgdG8gdXMgZm9yIG1vcmUgaW5mb3JtYXRp
b24gb24gcHJpY2VzLCB0ZXJtcyBhbmQgY29uZGl0aW9ucyAKb2Ygc2FsZXMuCiAKWW91cnMgU2lu
Y2VyZWx5LApNci4gTXVraGFtZXRzaGluIEphbGlsIEdhYmRyYWtobWFub3ZpY2guCgpXaGF0c2Fw
cDoKKzcgOTEwLTQyNS0yNy0xMQpSdXNzaWFuIEZlZGVyYXRpb24KLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCk9OIEJFSEFMRiBPRgpMTEMgTkVGVElEQS4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
