Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C13231D90C8
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 May 2020 09:15:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C55084ADA;
	Tue, 19 May 2020 07:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4OwHoPqibEPr; Tue, 19 May 2020 07:15:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BEFF786AC6;
	Tue, 19 May 2020 07:15:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3933B1BF2CE
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 07:15:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 35A63878BD
 for <devel@linuxdriverproject.org>; Tue, 19 May 2020 07:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MRJKG8UrT66K for <devel@linuxdriverproject.org>;
 Tue, 19 May 2020 07:15:11 +0000 (UTC)
X-Greylist: delayed 03:15:25 by SQLgrey-1.7.6
Received: from mail.veritas.edu.ng (mail.veritas.edu.ng [157.230.180.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D90B87899
 for <devel@driverdev.osuosl.org>; Tue, 19 May 2020 07:15:11 +0000 (UTC)
Received: from localhost (vunazimbra [127.0.0.1])
 by mail.veritas.edu.ng (Postfix) with ESMTP id EA83710EB0F3D;
 Tue, 19 May 2020 01:11:07 +0000 (UTC)
Received: from mail.veritas.edu.ng ([127.0.0.1])
 by localhost (mail.veritas.edu.ng [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id OJKuClSsNXw2; Tue, 19 May 2020 01:11:07 +0000 (UTC)
Received: from localhost (vunazimbra [127.0.0.1])
 by mail.veritas.edu.ng (Postfix) with ESMTP id 2B53810EB0B25;
 Tue, 19 May 2020 00:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.veritas.edu.ng 2B53810EB0B25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=veritas.edu.ng;
 s=77DB87F6-482B-11E6-9314-50CCB38249F2; t=1589848364;
 bh=oYeOwTtTK4mcRNNK0JGL7ZOgP8mm7StpJG1pujYq4Z0=;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:To:
 From:Date:Reply-To:Message-Id;
 b=G2aTUp5AyJPCZjZfWGEs7pe1gXVnAEEt+2hD4bCWq3NbNl1nKp8sgTGdjFc2bY3s7
 oJXHGRJhoMa0qP7bCcj08viMHaA5gh5wdToaiGflPO3YDLYrBQP+zFg5UDnrqvUUM3
 od+CioObRdnuvk/Eps7z/BbR+Ka07E295Yo04BaA=
X-Virus-Scanned: amavisd-new at mail.veritas.edu.ng
Received: from mail.veritas.edu.ng ([127.0.0.1])
 by localhost (mail.veritas.edu.ng [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 0YwBAlt8_KdG; Tue, 19 May 2020 00:32:43 +0000 (UTC)
Received: from [10.50.74.169] (unknown [105.4.7.222])
 by mail.veritas.edu.ng (Postfix) with ESMTPSA id 796A810E3ABD3;
 Mon, 18 May 2020 23:34:36 +0000 (UTC)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?q?Wohlt=C3=A4tigkeitsspende_von_2=2E000=2E000_Millionen_Euro?=
To: Recipients <oladelet@veritas.edu.ng>
From: ''Charles jackson'' <oladelet@veritas.edu.ng>
Date: Tue, 19 May 2020 01:34:27 +0200
Message-Id: <20200518233436.796A810E3ABD3@mail.veritas.edu.ng>
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
Reply-To: charlesjacksonjr001@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Lieber Freund,

Ich bin Herr Charles W Jackson, North Carolina, Vereinigte Staaten von Amerika, der Mega-Gewinner von 344 Millionen US-Dollar. Beim Mega-Millions-Jackpot spende ich an 5 zuf&auml;llige Personen. Wenn Sie diese E-Mail erhalten, wurde Ihre E-Mail zu einem Spinball, den ich am h&auml;ufigsten verteilt habe von meinem Verm&ouml;gen an eine Reihe von Wohlt&auml;tigkeitsorganisationen. Ich habe mich freiwillig entschlossen, Ihnen als einer der ausgew&auml;hlten 5 einen Betrag von &euro; 2.000.000,00 zu spenden, um meine Gewinne zu &uuml;berpr&uuml;fen.
Dies ist Ihr Spendencode: [CJ530342019]

www.youtube.com/watch?v=BSr8myiLPMQ

Antworten Sie auf diese E-Mail mit dem SPENDER-CODE: 

charlesjacksonjr001@gmail.com

Ich hoffe, Sie und Ihre Familie gl&uuml;cklich zu machen

Sch&ouml;ne Gr&uuml;&szlig;e
Mr. Charles Jackson
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
