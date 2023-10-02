Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FF07B4F10
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Oct 2023 11:32:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47BB561033;
	Mon,  2 Oct 2023 09:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47BB561033
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BrWEmmFqSICX; Mon,  2 Oct 2023 09:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8D0E6102A;
	Mon,  2 Oct 2023 09:32:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8D0E6102A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C36DD1BF4E3
 for <devel@linuxdriverproject.org>; Mon,  2 Oct 2023 09:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A991481BA8
 for <devel@linuxdriverproject.org>; Mon,  2 Oct 2023 09:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A991481BA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8_2_NMQLLogO for <devel@linuxdriverproject.org>;
 Mon,  2 Oct 2023 09:32:18 +0000 (UTC)
X-Greylist: delayed 806 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 02 Oct 2023 09:32:17 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACA4D81B7B
Received: from mail.chinritsu.com (unknown [43.163.193.35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ACA4D81B7B
 for <devel@driverdev.osuosl.org>; Mon,  2 Oct 2023 09:32:17 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
 by mail.chinritsu.com (Postfix) with ESMTP id 7339061549;
 Mon,  2 Oct 2023 09:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at chinritsu.com
Received: from mail.chinritsu.com ([127.0.0.1])
 by localhost (mail.chinritsu.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKIzXI3HAr7m; Mon,  2 Oct 2023 17:16:04 +0800 (CST)
Received: from [10.19.18.141] (unknown [191.101.157.21])
 by mail.chinritsu.com (Postfix) with ESMTPA id 56AC961864;
 Mon,  2 Oct 2023 17:15:52 +0800 (CST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Kontakt-E-Mail: alfagroupfridman@hotmail.com
To: Recipients <test@chinritsu.com>
From: test@chinritsu.com
Date: Mon, 02 Oct 2023 10:15:41 +0100
Message-Id: <20231002091605.7339061549@mail.chinritsu.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=chinritsu.com; h=
 reply-to:date:date:from:from:to:subject:subject
 :content-description:content-transfer-encoding:mime-version
 :content-type:content-type; s=dkim; t=1696238164; x=1698830165;
 bh=UHFqY+zdR/Fnbz1Flzt8oaGn2HDc8xOaMxz5IPzFlEQ=; b=fJMOzMNtUhM9
 rE2r9+/fBrbi8vykwFyrUEwjviVWWPcinnhZMeDySxXDYE6/rTJKPhOW3gVWQKpd
 pg9nYltP4dYqGmFnBhLnKmeQxQ4+oCoe1yCbjjdItUpEnKB4BBJ4yLpkpR4tcUE3
 Ob1Ek5MXwwyheQegEXT4JY3AgVk04Cw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chinritsu.com header.i=@chinritsu.com
 header.a=rsa-sha256 header.s=dkim header.b=fJMOzMNt
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
Reply-To: alfagroupfridman@outlook.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Guten Tag,Ich Mikhail Fridman spendet Ihnen 2.500.000 Euro aus einem Teil m=
einer Investition im Namen eines wohlt=E4tigen Zwecks. Bitte antworten Sie =
mit Ihren Angaben zu Anspr=FCchen. Ich erwarte Ihre fr=FCheste Antwort und =
Gottes Segen f=FCr SieViel Gl=FCck.Mikhail Fridman
Gott sch=FCtze dich.
Kontakt-E-Mail: alfagroupfridman@outlook.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
