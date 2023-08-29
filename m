Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D0E78C014
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Aug 2023 10:16:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96B48405AA;
	Tue, 29 Aug 2023 08:16:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96B48405AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qbJWGTRkw5Tl; Tue, 29 Aug 2023 08:16:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83562400C7;
	Tue, 29 Aug 2023 08:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83562400C7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 075E21BF29D
 for <devel@linuxdriverproject.org>; Tue, 29 Aug 2023 08:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D051F40963
 for <devel@linuxdriverproject.org>; Tue, 29 Aug 2023 08:16:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D051F40963
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KO0jN-JHTZv for <devel@linuxdriverproject.org>;
 Tue, 29 Aug 2023 08:16:45 +0000 (UTC)
X-Greylist: delayed 368 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 29 Aug 2023 08:16:45 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2488F40955
Received: from mail.corebizinsight.com (mail.corebizinsight.com
 [217.61.112.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2488F40955
 for <devel@driverdev.osuosl.org>; Tue, 29 Aug 2023 08:16:45 +0000 (UTC)
Received: by mail.corebizinsight.com (Postfix, from userid 1002)
 id 1DE398304A; Tue, 29 Aug 2023 10:10:30 +0200 (CEST)
Received: by mail.corebizinsight.com for <devel@driverdev.osuosl.org>;
 Tue, 29 Aug 2023 08:10:28 GMT
Message-ID: <20230829084500-0.1.g.186t.0.l6rr8xdfi5@corebizinsight.com>
Date: Tue, 29 Aug 2023 08:10:28 GMT
From: "Jakub Kovarik" <jakub.kovarik@corebizinsight.com>
To: <devel@driverdev.osuosl.org>
Subject: =?UTF-8?Q?Pros=C3=ADm_kontaktujte?=
X-Mailer: mail.corebizinsight.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=corebizinsight.com; s=mail; t=1693296635;
 bh=CEmchsDu5Oe+RNHCZSBmKSgMOuy1xnO2dydqkEjt3Qs=;
 h=Date:From:To:Subject:From;
 b=6pQPWRU28bY+X6x+u/NnZASRTacOQZ9aWgcofDWbNsiTdUP7mfqoi6GXU3bog0sZb
 1U24GntDYJMN0cNHyAFxs4lpNkpdN5wkiWxb7ahz4qGn/QnaLNU1FY3SLdAItbhPcq
 bsTIknUgE+MwAkcC7yJNGvewV331fLA1AlCQAJ/DBWUv3S2hlYYt24Va35oyoDeQja
 eOLHbsKVEXV7vDuvqtVIWiaK4qIllM6Ygf+ydcQcuBdG+zHgTOYNkOXTbIN/abv4OM
 vBFoazZCUX4dR3xRta5WMWGKA26kcXgfJModlbfP1wNfXb2rUcML5V3oAYGSG7zU6k
 i/oWXqDERyxGw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=corebizinsight.com
 header.i=@corebizinsight.com header.a=rsa-sha256 header.s=mail
 header.b=6pQPWRU2
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

RG9icsOpIHLDoW5vLAoKSmUgbW/Fvm7DqSBzIHbDoW1pIG5hdsOhemF0IHNwb2x1cHLDoWNpPwoK
UsOhZCBzaSBwcm9tbHV2w61tIHMgb3NvYm91IHphYsO9dmFqw61jw60gc2UgcHJvZGVqbsOtIMSN
aW5ub3N0w60uCgpQb23DoWjDoW1lIGVmZWt0aXZuxJsgesOtc2vDoXZhdCBub3bDqSB6w6FrYXpu
w61reS4KCk5ldmFoZWp0ZSBtZSBrb250YWt0b3ZhdC4KClYgcMWZw61wYWTEmyB6w6FqbXUgVsOh
cyBidWRlIGtvbnRha3RvdmF0IG7DocWhIGFuZ2xpY2t5IG1sdXbDrWPDrSB6w6FzdHVwY2UuCgoK
UG96ZHJhdnkKSmFrdWIgS292YXJpawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
