Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9E5188417
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Mar 2020 13:27:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B68DD8744C;
	Tue, 17 Mar 2020 12:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nkFyfFgdP2kk; Tue, 17 Mar 2020 12:27:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7D0687285;
	Tue, 17 Mar 2020 12:27:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3F571BF3B9
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 12:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F08A026162
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 12:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TxSOZfL-5XYB for <devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 12:27:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic316-53.consmr.mail.ne1.yahoo.com
 (sonic316-53.consmr.mail.ne1.yahoo.com [66.163.187.179])
 by silver.osuosl.org (Postfix) with ESMTPS id C4DA726150
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 12:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1584448063; bh=kcevCRoll2+Bsa3FDERpIV72LVcB1A4YV1b5N2AWYBk=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=PFlt4qHchED0VZQMRhRWXXk81nyPsxfqL0quB7bobV9Vmxwcq6aAMcQvv4sl0pcmrVtGcdyVnw/1jGSs5GdDOfDD7aZy1R0zRUQL4taILdNxJGM3BVThi1/IAcs70Lm8Un9C7e8I+gQULawgbKmptQPnWUJSCKIhr0gL2elEtyO3RdWaZzdtsWrYU2NF8MqFEQpJu6ETakhgUnXjGMNKNi7rlE9vk41lHqI2hOONpjfQ9iIaGBCHNrckQvkr2ucIRf3g84nIiqJp/R3XGrFMw0/3i3OJc8FwhiHiMbLDAiXLFCQb4Sol4Q28T1PusrZ2nhqUJzHvYAV/lY6n3o/qEw==
X-YMail-OSG: Ue05kJkVM1kESe4wgeLl5H8zREvh9Jzy0vP8VCQLM8PJGTeuE2buNJODfhWweCz
 1vmvxN8bsrpdUqTgf2mSrVOEBI.Ykkt2.MdNW7QLP647uWFlWjQeYgGe7NeWJiw5boZWccc74Xve
 Rn7DMObgN4KIVRULTFYteROsjYJkQpmeQWepDBY4fpCdiH30k9535EWUI0WxZlFJaoX3gbj_wO09
 OMMzjJ29Cl_6GZ5hldNpoyk4odcOtKvAR1uXCf.wcnhzNPfN1IVlbYWvvgoCKcHelF9z3CwgAER_
 2IkRnL0Q5gd.ZkBJq1H.5S_qpnqzS7_zOwVWyEoycZV5qZmk5ySbQbPNkWTPC1_cang8S_pkNwLa
 6cD8jXdjHmy0iBJjqgcPoVk5U733gBVcbKpYBfkUCW9lSdxlL7oq4egYb1uf1UqUk49YAI_MWlCm
 fdxr7PR_R0Y9vobxL361O.c18fFAcZrRHrbdIPQd1_aPKX9ZnQAfa0JqybNCXwPv5PbnH9N9S6o9
 9pAZ3LjofqtQ7oYl.cJW2feoDSc84dpceyLQcv.c9rtdNbLuG0thHf0c8bB_ll5yUuivz5YevWeg
 p7uV7BK9m8XQaJs9ZQWfLbxkMY11wurI2_1AQZJx4mLZoneoUxFdSMIYCrW6XXyzxozAv_MQCjN2
 .GxaWHIhPX9US1PCLq_Bo.o7drbVfXns0bg1nf18xZIwaaP7pTEwSERqmOGkhB8.k0tHolr_fBUO
 _0XWkHmkW9BQGNzLLNUlzM_WlwXZVfRohS7Y.NSj6oXoVzS4K7k1RShrbQHzY.bz5rOUmvf0LPcU
 PZRHdh1mKoTnp0no_jn1QLzvq_KdLL5yM0QzzD4zmzieLNpdoyi7.ivQHwqmyptSAx8AsISpMSq4
 2EljxAKn1U_HQ.3T7diRxivv0i7lXGdpoaf2SPZoqvOtiqAkNOOS.RUE9yQEMPypCVVZKocs1u2F
 cn0NDKNeQEP3NiFbhUcnyGLkBPerjrE_wGJCFUx8jOPPo6KJmqVVs.s.KF0o7UybWp7oMFyE1ZjE
 ioEq54V8SuHpDJg_VGg0RfHWCkNz4uBY1TVmk1OxfW0..lKWUr__xU.zLCsYiUtIrGSXXr9hwjPm
 Jy0EhQezMrKtXCcjbuFZlo8wBhTRz5vd52jWiPNuM1hIQ3xBdKifILYQfx7XzclZ1amj.0cBBd0p
 TeR.zjTgez6D1UpxAViLVXosPhE5.5yTsELYGSUfdQuDWIQqUqFi4IvtVtJvpXvE_JpsiCc68mfJ
 B9zjNbXYJAVi1fD0XysOM46aYeTgFM9diGwAee9dlxG.EQVigxo7L5xIva2GR9zacfaQbh8YtHvA
 VS76Cjecx2.KNJJSY3qTPpnKGKsc-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic316.consmr.mail.ne1.yahoo.com with HTTP; Tue, 17 Mar 2020 12:27:43 +0000
Date: Tue, 17 Mar 2020 12:05:39 +0000 (UTC)
From: Stephen Li <stenn8@gabg.net>
Message-ID: <1756093619.1826605.1584446739147@mail.yahoo.com>
Subject: REF
MIME-Version: 1.0
References: <1756093619.1826605.1584446739147.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15342 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132
 Safari/537.36
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
Reply-To: stephli947701@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Greetings,
I was searching through a local business directory when I found your
profile. I am Soliciting On-Behalf of my private client who is
interested in having a serious business investment in your country. If
you have a valid business, investment or project he can invest
back to me for more details. Your swift response is highly needed.
Sincerely
Stephen Li
Please response back to me with is my private email below for more details
stephli947701@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
