Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7198DD67E3
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Oct 2019 19:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 758FB86519;
	Mon, 14 Oct 2019 17:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id naofpv9pNB4p; Mon, 14 Oct 2019 17:01:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E9B6786506;
	Mon, 14 Oct 2019 17:01:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E28F81BF27A
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 17:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E01C9860FB
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 17:01:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofmRbUAMVcOM for <devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 17:01:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic315-13.consmr.mail.bf2.yahoo.com
 (sonic315-13.consmr.mail.bf2.yahoo.com [74.6.134.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 520D885566
 for <devel@driverdev.osuosl.org>; Mon, 14 Oct 2019 17:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1571072473; bh=6u3qDl6yXWBH9oVBF6VmNFaXPPfmaUEmS0LDo6+oXlw=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=BY4dkzlm0enpxHiw1RvqUKXPk4JTOplpt+r+PDPRojLF2b//Hpe14rZoYENxjv3gNY+sUOKyHxL0ECBB0k2yoHwwTchbiF8d/lhFh9/Fnehp8fyQe8S84BWl3qaX3drNqgiEGobAXxZdaDe9hAM4NVNGSgUNi6mKqaaMzTdt0rBr31c+zVaXgWmcA6fS7efe6waDqUZhkOar+i7d5dJ6//nzhsMYJVNais2e03+pNBVdvu2OrpW9izY2vE+WgrPRiqcEHIGyZjo87OMrE1Ms+dvUK+boLqGiyt2vVUaiCZ5srww0n9dt9PywrTHB+NB/RyrO2u4TNW98DXdtkKSgTg==
X-YMail-OSG: QwX578gVM1lxYj1hbzg7IaskJnnetYBzRypzN39NUHN28CIwjzDzl1v_PouXcUB
 2EKjXcwOfNPbCtgOf8puAK9hUFZK6WznzIXqbWD8K.xp.4egkb41PHc1Znbi_SMN5APwBQi2nWm9
 6a7F_.vTxv9xw25I5UqUtLOABrZe_H4tOC_yVV9f8RI48Dfd5nopWsr93an8CgOAU0kTkuMxEewD
 ZTqXTFR0ZN7u4yOeoBTOQEXRAW699dkoisfUXvuF_GqyzwCnvG1Sg.JlNkXx8gGmmFB7zohMQx7G
 wfc6m9sVXyGtS4TJxhtNiOsa9E4xaBBiqyp9fC0gqiT55mC5momsZxcV06L9Ia2zMrkrud0sQQrn
 l43gP7w1GKcTL_8W572sf7uhUdw4XmZi0YuWWr5CH2T6tw7gk.SFeg.PX32yDUrX_vrWqk9Ft9lP
 q_UBpKAhqJ6YPdGgOJmAUnWF_heIV.MFWO8D4gbMygSMp.mMs99hvzWOGpD_C833QLTMsXdPNkLN
 pdvzxibgd3qIzAZR4i2RIChc7BVHSXMt.L.i5AKmdx8wNbXNcYYrbESB7ZsM70atqGNykZtKWCtO
 LK2qZS3qjufQ29Qgg.cMMqsqEi91jeyb3JnAdoLstkTyC.MveMF6QOj8qzt7ZiOIDAhASPahJ7Aq
 GEyJ9v8upSkCvgSnnkjROpOLGrGe2UBhKXgh2C4UFQhJYwPgHzWlhjCToHW1WYx4jFzmcsuy3jtU
 7.V5RlmPwEvxgBGA7_8XZuHypuC5ixk.4efyvVePNRkwTvuBK9dp9tClD2LDM4gaIO22__ZESA7q
 m3uLCcPpgmv.NxeC691VMLXF1iWE6QiSXwisJwluDWam8nNaQH_ZM.MqsYlk9tU.kYWZ8rirwcaN
 neIp43b3D8rXxm6QHed1tb2LI5MGAVpvscVB5_i1M8xhG.RME7xzokrOh8EbWcvL3AgvYlsi1YlZ
 mlCRT2hiaTmkAT1pr9sXOfqrj_FixqChNC8w3Ts512aRSiYVQDJREy0b1YuB98P3tudVfZMnJBLp
 f0DlHd.gkqwrt.y5yz82ISrZnU41quT.PHoKHaWHk4PJ7jHR6jKw5olFmyl9fMSTAnn44uPLZcJv
 oazQ.w1oCk381VF89Ob02XQzdb2IDMAyPwlYLaK8P77W_vQaporIIc8KsVRnURjn7UgrnaAZjM85
 U9DYScZuREeqHVur31CrWAxArH0z3PYRX5ILFjHKgg77xVDEVWo28qFPZaS3N9MoO5UY7Z6gKC_1
 .mwbqIFpAAMXMxzNr6zemulAvvp1PHQYXnQP1FJHvLBPTgK2rkTrW
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic315.consmr.mail.bf2.yahoo.com with HTTP; Mon, 14 Oct 2019 17:01:13 +0000
Date: Mon, 14 Oct 2019 16:51:07 +0000 (UTC)
From: Ms Lisa Hugh <lisa.hugh222@gmail.com>
Message-ID: <1145173635.867162.1571071867495@mail.yahoo.com>
Subject: YOUR CO-OPERATION FOR THIS BUSINESS.
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
Reply-To: ms.lisahugh000@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear Friend,

I am Ms Lisa Hugh work with the department of Audit and accounting manager here in the Bank(B.O.A).

Please i need your assistance for the transferring of thIs fund to your bank account for both of us benefit for life time investment and the amount is (US$4.5M DOLLARS).

I have every inquiry details to make the bank believe you and release the fund in within 5 banking working days with your full co-operation with me after success.

Note/ 50% for you why 50% for me after success of the transfer to your bank account.

Below information is what i need from you so will can be reaching each other .

1)Full name ...
2)Private telephone number...
3)Age...
4)Nationality...
5)Occupation ...


Thanks.

Ms Lisa Hugh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
