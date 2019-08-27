Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E419F9F3B0
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 22:02:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5A5886BFE;
	Tue, 27 Aug 2019 20:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eCwMAsfoewhE; Tue, 27 Aug 2019 20:02:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23A5A86BEC;
	Tue, 27 Aug 2019 20:02:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D931D1BF836
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D5E9320552
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qk631y0RbLx5 for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 20:02:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic313-9.consmr.mail.ne1.yahoo.com
 (sonic313-9.consmr.mail.ne1.yahoo.com [66.163.185.32])
 by silver.osuosl.org (Postfix) with ESMTPS id 120882107D
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1566936123; bh=d1bRaic/0qm80IKpfGcgxb/A2X9Zy/Ywrgs7tajSgsI=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=OYx71NqedeQcZrlW9AeAHSNphVgJ/xoE0p52UGCjYTb9E+S4o9XzHOUr3FMIxf4H+SxawxDsjIFdh0vfUBnpZASz5qvZLQrP9jzwYCVT4hrv/h/0sp58lr3QqPIAFQGUoK4h79M16Ms8RCq4/fmtNhIKasE5CPpfSy17+dxe4ztnLzl5MgPWOEGDPSeTKaRPv4UHyNnoloonstCVe7b/jGUAT5WE/mcuz81SJjNGaZYdzMDzbcP7GdvxNax6QSdOYYGUSCnP/gbDRns9464WfWYmAF+uiw8pKDtaI/b/2ilPkk+y4WSzDBITt04lasOQoeBEOA82NVxbcxm8OHDHPA==
X-YMail-OSG: YOtaCJsVM1mHhMqsEXCLaXViIuDfaFTe46T3LaV7FMPxrC.QAsQ7TYoDnfKoPj4
 sLk4fIw3rv9CbfrP53Gc0eZIpu0VCle03Y7KvRcElvm22JkIayKMtDD.kZag074g.EFaeMGfrK_0
 A6mHn1zpfT3gkVDSsd7F4sZsQFSVLrho5mFXW9menRmfuXKpAhV3.ZrFDAtLpfc.DQSvR_19.NOu
 k6GviUhbpF3NwaxjmCsa7RxoM5ItHJXCeDNus1MjNSOUtwLPynTo4izC_aSQjQXGa_psV3UPgzMl
 L_w1XbqTIqqZ00BHkE9Qn8.L2N_Rt0hQ9FC07Nxq1Xdj7TyGlEPw7Z8fzo7cMdNZiVaIVjmSySKa
 ZUzTUdW8Za_Jo2OolavgLZqPA2lED0vxhS9Vl1T5p08wmrM_AjyMyp7GDh2Tehg7ZV5In83v64JT
 43Kxeok9kvHmtr59JIZCc_3O.qk0zP2IUyQQ1QYjMyB9753waUBDl9KJ88rqtezTgimyCU325Jqf
 kSiPJh0UZiE_IFYvvU_OHD7tbNjnKChXj0Or29qCZzTICQ3yuuqA0aI3m0s3k.r0052xqh9w0_Jc
 cZTsT9vxJ.u9B_7g0H_3eM7uxhgOEKlVcgXtklbKTb1lEkmGaFnYjnujAFl0Lpxpzs5lwt..R60q
 VoCQ9O1Jax8kxfCzHcsYAGHDj6Zdt2kH.LDGI98yehsNc3jdW6kvq4cXAAtuPxu4MFxpzaOlauJ6
 o8LOx_S30KtZCJc3i7MN.T.w1y_SREBOmB5wyyAd4f54V_ZznH3.SScjmMVlLh7TyKFImVDKwvQK
 HY3AAhMJhuHOT1z9TyfFtvzdztEiHOy342kAMXwEGbIH7.a45k0dUAo6S9xf0NSt5wEgE4u4AAiU
 u6lUFAIR1lh5.gKxe4XrId95QkU3xv.90N4nDI.et4dqLfSMYruIQMoNQercLQOl4F1vY72Q7tuB
 BKwTfiRgi93MAXimaNHAL_gzm4Uzh0rw9iA4Rw4CDYL3mUn1GqB_UXOYJDBKF0kYE7hcuzywkWTI
 irJPTdsr_icm1v11qn2JTwd9sAOjWIixQImoqrNxQlhKR2073TYMtWMJ1ZnSnX5ejejonUxfgMet
 Wm.5FNCX52.JW9z3lLJfL5Fv9tOOVA8dD6wjWt5bEh23y1IOduEbPRmXUBj1TF9_YcLs3SYVh7qt
 4TVctwYTSvIvnWXk2.7hWWLvtDyg5y9TKwSY0_PWZNk66u9g5KQxL0YENrvg-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Tue, 27 Aug 2019 20:02:03 +0000
Date: Tue, 27 Aug 2019 20:02:01 +0000 (UTC)
From: Rosemary Jones <rm.j23@yahoo.com>
Message-ID: <1481482139.33167.1566936121794@mail.yahoo.com>
Subject: Dearest one
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
Reply-To: rosemarryjones123@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Compliment of the day
From Rosemary Jones
West Africa Ivory Coast
Dearest one
It is my pleasure to seek your opinion and also to confide in you for a business partnership. Though we have not met before, but I believe one has to risk confiding in someone to succeed sometimes in life. I am Miss Rosemary Jones ; I'm from Ivory Coast West Africa Region.I contacted you for this noble transaction to seek your help and advice since I am too young to handle it alone.

The sum of Ten Million Five Hundred Thousand US Dollars was deposited in a bank by my father in Ivory Coast which he wanted to used for his political ambition, before he was assassinated. Due to the situation I found myself, I have decided to invest this money in your country, because of the frequent political instability and also for security reasons and the worst part of it, is that my uncles are trying to kill me over this money because I refused to hand over the documents covering this money to them. They has sold all my father's landed properties which rightful belong to me and has been on my nerves to give them details on the deposited money, which I refused. My life is now at stake so I ran away from my City to Abidjan, hiding in a hotel pending when this money will be released.

I seek your assistance in the following ways:

(1.) To make arrangements for me to come to your country after the successful transfer of this money into your account, and further my education.
(2.) To help invest this money in a profitable business since I am not old enough to handle such matters
(3). I want you to promise me that you are not going to betray me after the money gets into your account since that is what I have left.
I will be pleased to offer you 30% percent of the total fund while the balance will be invested with your help. NOTE: I have all the necessary documents backing me up as the next of kin, If you are willing to assist me , please do not hesitate to contact me for further details and also hope you will handle this transaction with almost confidentiality and transparency it deserves.
Yours Sincerely
Miss Rosemary Jones
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
