Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C36185684
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Mar 2020 23:38:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1263D889DE;
	Sat, 14 Mar 2020 22:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9HdYnvUh9-st; Sat, 14 Mar 2020 22:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4B2D884BD;
	Sat, 14 Mar 2020 22:38:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5877F1BF34F
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 22:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5027F87D9C
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 22:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dNKywro-c3_E for <devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 22:38:11 +0000 (UTC)
X-Greylist: delayed 00:10:03 by SQLgrey-1.7.6
Received: from sonic307-7.consmr.mail.ir2.yahoo.com
 (sonic307-7.consmr.mail.ir2.yahoo.com [87.248.110.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0CA1787716
 for <devel@driverdev.osuosl.org>; Sat, 14 Mar 2020 22:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048;
 t=1584225489; bh=yQ8j5nOiL1AB9VzjpcatQY3Gp/1Xq/WgkFt4Qo+Pvao=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=oj19cQ4KEk1ubbKd69uEQ45co4k6jjUI8J0QRmFhM2l6M4XaWk883fY6wdN/RkH5vfrzb6krDZZS1D/slt4QTqbFdpfh8lP6XoGJMvqLiEddUMaWsXfOUjvd6Uwn+BNGrRDG7hGOxQI3ccej1oBEWOTa3DPQ6gDMfM5KwC5d+IaDjRFdOzqLEq1FgWBrp1GADBLgGhU5bpccWALpEKDH8l/6Qqtsj/c98wZe3A7nDAlS81AHp3XIo5cuZoc1n3sqoRWbGZRPMm45L4JJFBUocJDMWJD0cBhv55qjESBH0/IuhmmJzHY4NHevfWkFprJGdqrqRJSH/vPTtwEEXoTj1A==
X-YMail-OSG: wRJADAEVM1kdfzm7gVx0ToJHJLeAJLHm2GrLkEF6puJm77k5au0Zj35Yt6r_Sz2
 ERby3kOjrGQN.EUNTZ5p0on0j1Qdi8lrIN59hWJCd_TxWvxX0OxQcM8PEGFv0K46wpFf.LmD4xIZ
 xRgBVNH_cUyRIONFOVRzOqYRI9A3itOGNfdFwUWLUjszMAHgzhxPdxoHou8t5i3a3ckseU1hHIO9
 fU4ThQ2u4xE0iszxQv8CfRjqIcsXiOH_TmEtD34cPrIit8_d827BQUquOZO56a0ahyBH1kG52Ue1
 _1WZPBd3EaBmVac24DgqBsVgCgwcoLm7S.g92x6GcBWLzdReyXUOgjJexnmJ46EFetS9wZelEtCb
 PzvH0it5H1AmZ096sRQeFaW659hJHYyu6YZ9Zgyxy3B4WdJsKW4dSgTmmwOgSWqaGGxhyG7OC3oZ
 pnfwt7naenUsp7yTrrabtEoXIh_DPTdhsFz.Su7zdrxbdH0VSZWzqaAl1Wv93r50aH_QO23uciMT
 QkPrDzyS9.Y0caDH07YdwlPzwISnXuABpBuBUYdhjJVY9U1ytnawS77UjT6RNUZHKbBpvyfHL2cb
 I1CmuJi4_x.lsHeBpeFlYOcyxdrJj2jRbuZXdFwjP9XlZmYggzl67obHcLT2cAy4Rpacr5ITJcb8
 v6LIfZEBEUD1yh8INmtoVeJsoN7rr7rTRXgPuMDHgF4GeH6iAW1jpNgKAVgJJrSfMyxDUG0GPo9i
 dY4nmcg6rBNOEpjzff1UtkwbYqABnbHJ4HdQkYfyQK7W8T0wg8R4wKivzUGPrXgM.HHsN03VsDGn
 hBp9TAzTd0tcXLqWT8Haba4uI109TxUd5CVVOFFJNxhEAqsf706LyJUIv5xaJtBUSQcedsV0Zr8y
 ptK5iKqdr8ZBnvIS76rjlQM11dSSx79k4jmLERtIC30B4vhi.DXyPv0emSEo80bm1C2EckH4TaUQ
 dvnaO8r4TrcOi2o8YO_ujE74U8oB6vvRND6wnGL4TqRYn.mv.vDx5bqkmA.QSfsYwifM7ddrqWfp
 lqFia2tmC9d6ZnXMaSpbdehgLAEOG5xfzfs_jkQIKpR5CJlrKQCOo01R7afQOVmozUWLDCxoWQ_l
 Cfu9MBp8y9mgFpfWl0ldDpV4ArIj_rpncAISnR74_EQSRBvlUNAJWKgK3ukznEl1UxrmgAWdVx0A
 1Wy3da7lDlBCsAXw1M9XxVlor3RjmzOf3y1amJKnna8Ah85trEnSaXmxRdqKPwA90Bj5s144w0oN
 zJKOAMKapvbIlvW5OTWBOL_tgV8xCcNv5U1JjhwRAhkKigg1d5JgcMYSk7h9V7pzvsbTw2Pg-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.ir2.yahoo.com with HTTP; Sat, 14 Mar 2020 22:38:09 +0000
Date: Sat, 14 Mar 2020 22:18:01 +0000 (UTC)
From: Olatunji Martins <mark_esq@yahoo.fr>
Message-ID: <1439077240.1272722.1584224281519@mail.yahoo.com>
Subject: Greetings
MIME-Version: 1.0
References: <1439077240.1272722.1584224281519.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15342 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64; rv:74.0) Gecko/20100101 Firefox/74.0
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
Reply-To: barrolatunjimartins@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings I am Barrister Olatunji Martins, personal attorney to my late client who left the sum of 10.5million dollars in his account and die along with his family. so i need a serious person who is willing and capable to work with me with honest and trust to enable us proceed in details. Barrister Olatunji Martins,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
