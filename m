Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B711C74F2
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 17:33:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 54AF025570;
	Wed,  6 May 2020 15:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ySdpXxwqJOjZ; Wed,  6 May 2020 15:33:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 836B624FAC;
	Wed,  6 May 2020 15:33:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CC2C1BF958
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 15:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 817C386C6D
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 15:32:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Qs-xpcE_IVH for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 15:32:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic311-24.consmr.mail.ne1.yahoo.com
 (sonic311-24.consmr.mail.ne1.yahoo.com [66.163.188.205])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 09EB58698D
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 15:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1588779177; bh=vBwxG4aVEFHjoHFmv/Cv3zI3L1H7Q5un7KRLIfybFcs=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=CNK8jpD+UylDpHKRnITd6IxjR4vtfxSP/2QzN7UY1UvjVCtAwKQHkRutilg5HAB06aR4jwYcbZDFJJgeZGfTe1TcPhGzFxmxD1V82PJWaEIhRmFCl7nwcqF6tJcU5dSVjhLtkjzQD55krnfkYlkTkRfGVjOzQjbx1ZizLSP3dLcIqqE/1WFwEH4TeRw/CHgXYDUOsmUpsiydeSk9pYH4mR9IvdYqTteQyVYZX+NgpVt0KmPkcu/pZyTXs8PkJ3ESq2JfD/5/pMN6wfLCRxyGlDLAfiJoXvLUDiVKU2xqMLlb8ike2cExbxwqsZFmRie9SQ2Iw9ifTJ2TQl9t1GbzdQ==
X-YMail-OSG: kkopx1cVM1mHPSzxe4HCIaWODMUxZFWSxhGdJslE0mHmbkb2O8Rqh15kFBtLQ0A
 QsGmTLzBYI1eqtnPTtXpH2y6uN8whW3Qbwr94tKLti2IsvUeXgG2FP8g6K2ce0N3VJ6wSy70u.zV
 0FKvQViFYNvL_3Ke0CdgU4.iIwAp6iU8brY07l2y5HGA8_S47UItJ_Ou01ag0aSiX4PaUeXyymLN
 vucc2MH8dntyWVtPe48mjOF5iLuV1qpZflRedZVyPnHOpfdZ.OT5Gtm8MVm5fqRhuHc5M5hl8VuP
 fYZe8hHTm5VRhoAcUB257wTcnfu0TDYo5aUSaAfiIN.xol5O6rmN3PiD6EYXxWTOeC2YO1z5lzAZ
 N7lRTsj9XVFUssiOy3jbilRGZZ9.ATIQfR8atRIP_JqKy8NF1EYBAm1jiZWFeqvcOWrmQvO3Ew0h
 hZhdP5VW4GJYow2_83.0TFlFRZC7Y.tszAgBnDr9P5JBH2mJAZP5yQPfJHoUUmPLim1GJ.oATs6C
 4XXD_M3PqX3sRPBVaG3P_l5t_u3QQAKBhwzpPCWnq6IpiD3fo5T8qoXlHMfFow1dFD8_.BVTKw6F
 Wj2ehmYmPfq6Tn2Fmdrdgo5R4FW5PvSeomtDXYlqGdwfKgrETpPSu8gwiTYH6Y64T98eMd28aNef
 e7cbM4He38zdUnVsHj3urVRvVJ.UAKsTUqxmhPIalARAhk7cF0HapwbLSmIq0nhkToBfrFWYp1js
 ri4XlcLdsRV9JAMijWggMccUJGuUer.IEY7QDIC_atafgAjqqez2dZfb1_qo_9MjXVIjcRnsWNMQ
 aZr5U4ReeALFhrytiQ8sVQwJzjoUdxJKcodZBi.DZhr6Pp2MWgLZw2._KSUKHTMxDDY.16nbm3eX
 2ERMbQ94Hla14huYmnWk2iTINPgU0EZVpPLgYUUr2U.nzKyK_3HiNZDK6G5Q2xfzVle4IFzdZTwS
 5DddBxOTN8SrJRzPuBHEO9gpNMKaIcZC.6XJP_sfTzJKb6mV5eE62t5pecFPogtkOJFbrf5zt0y9
 Vmf389ezLcFQ15_kE7qlQN0Jk0bemW0uOKODelVdzvvxCuiro9zDiQVCothGbshOoN4JqtH9TrII
 w2uNm8oIDwyDeGpXwTM4zR6GlLHi5qPZRrp9nCIsbIfJevyTkWt4SzESb7AkQcoOBRp5mqzHiR5l
 1.SqnT328VvM0K54javqjbPBQLMkJaAxBkrasfXelIddxEeOJz7E0XM7THA7sARPmvN156A2vVp6
 xqTLej75Si3eAP9_IK5J4szs5vT0k0supmj0cSKk67V5BUR7tZvZSY0x.RQziT3hgCMOYyhpYBVE
 yVp0_C2Wu
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.ne1.yahoo.com with HTTP; Wed, 6 May 2020 15:32:57 +0000
Date: Wed, 6 May 2020 15:32:55 +0000 (UTC)
From: Clare Petterson <paulfred79@yahoo.com>
Message-ID: <985503791.343998.1588779175914@mail.yahoo.com>
Subject: Dearest
MIME-Version: 1.0
References: <985503791.343998.1588779175914.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15841 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:76.0) Gecko/20100101 Firefox/76.0
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
Reply-To: clarepetterson1@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>





Dearest

I am Mrs.Clare Peterson, from Australia I am married to late Mr Georg Peterson,
who worked with TOTAL OIL in Benin Republic for Twenty-Six years
before he die in the year 2009,after a brief illness that lasted for
only five days.

We were married for Eighteen years with a daughter (Lilian)who later
died in a motor accident.Before the untimely death of my husband,
Since after his death I decided not to remarry When my late husband
was alive he deposited the sum of (US$1.5M (One Million,five hundred
Thousand United States Dollars) in a General Trust Account with a
prime bank in Cotonou Benin republic Presently,this money is still
with the bank.

Recently,Following my ill health, my Doctor told me that I may not
last for the next eight months due to my cancer problem.The one that
disturbs me most is my stroke sickness.Having known my condition I
decided to donate this fund to an individual or organization that will
utilize this money the way I am going to instruct herein,according to
the desire of my late husband before his death.

I want this fund to be used in Activities like, Individual who will handle it
Orphanages widows, and displaced children .I took this decision
because I don't have any child that will in inherit this money

I don't need any telephone communication in this regard because of my
health hence the presence of my husband's relatives around me always.I
don't want them to know about this development, As soon as I receive
you reply I shall give you the contact of the bank in Cotonou. I will
also issue you the documents that will prove you the present
beneficiary of this fund.

Any delay in your reply will give me room in sourcing another for this
same purpose. Please assure me that you will act accordingly as I
Stated here in.

Thanks and god bless you,

Mrs.Clare Peterson
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
