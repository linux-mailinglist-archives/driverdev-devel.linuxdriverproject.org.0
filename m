Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F691E073D
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:46:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B0932262E;
	Mon, 25 May 2020 06:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Znpmj6yWYGAf; Mon, 25 May 2020 06:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E0011203E6;
	Mon, 25 May 2020 06:46:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29AB41BF21A
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D9CE81CAD
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2aFnORotlW67 for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:46:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic308-19.consmr.mail.ir2.yahoo.com
 (sonic308-19.consmr.mail.ir2.yahoo.com [77.238.178.147])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CAFBD87B21
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1590389193; bh=boeRiY98ojshyC5cCGJ/TJhXpd7nOtdyaesZY9RLZZg=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=H5sjtLYPIfKBgcSdyRTZMRimH/Jx0htg37V6vJNVN44bT/8bCQjosKbMQMNin+r/l0att/XZkCepzV6/E4GiOAbkHYOYAZpGGxFhr/lhzEHF81MYoeaw89ud088BHw7GC/D2I3v9JsBiAwuFJwqYrwZUYchu8s1VGuezAnco69DREMOdOiNvhIUInPEU2rhMKoU2HwHN7Mby+sbVlb/z6yvQJsDfowQwEZgaNFDJixS5jl95sCswCKtKeZQDA4SjWrAESk9QVncgQfyNEPZJORIexcPtaXjMQaP2/Vf8WK7Sw3hUNzxO/gTK1wMs6M4Q6pO5Dzdtc6+roffEt7Kuvg==
X-YMail-OSG: A0PuhAcVM1lH.CWsZGcT_U5b.V.l8pxOu1uhmLbRRD.LCF.bVpnEFrc1nu1iLLu
 r3hY2KFvgHwz9qoUvDo3Dp7K2w3Fua5YW4pwmXQDlL7AXj2SzW67DicQ2ZdpBsqVhRN6O0vxMMlI
 _hvzSl0aVOpKFA8Jl6Q7i88cGO94SDLrI_a7bcKIR6d7w.RehQryBJqNk5xe9g_vWAT84M.FKQ24
 m3ZwiC.rKKCt6yMha5QUbCj1wod9Lf5wJvIul9_cW2NhvS1AVZ8KvD0g1gd9Mt_A82WBaWxyJYxL
 G60V46bNhqfNWa5GGAdujC8BRgBWOw_1C5FEJyOo1iTYRJu5pICTqTo2gqPywtmWRNUuMw4nRWle
 ErdCU17f_cRe57T71J7sCBKt75Onw21OT7wZ8IrwCNCUzJnQicjcjHwUs_Jpr4WMFx431abtErVn
 SFS_KZO5vxHpR2_i8KRQ3hc5k.cLEhwA_LOaeBT85oTt4S3LMhqs6aqS8VOY3KfvHjSkQbfpT03I
 ttcaPU6JQpjTs2X8sS_i5aqsaUJGff0rWXvCdeltuGLaQY_gKQKWQU10DnU7qJUZWlhGMU47Zrhd
 yel_CXR9EwajBYO5XiWBFzFe2vkPptr33KdZyErqNuVkRmY1_sNNqzj78hBjjlP5211oH0YrDlu3
 mcsLxW9LuhpWMyH17iq7CY_pGcALMzmSd_6cj84WQA_tFT21CoxDv.71tuW7YBmMpMerEqQUjpyw
 RF55P6q.6NH.2BtocWRuVMXid2GLfUnvZ_NnUoPu86SEiB9wVXTM3MejkUIHbONrmlK4Iy4ZPwKK
 pyu9MrlzgCmUdBWC2GZKo0Q5KXIhbUteiVqflwu7aAewTl9kuWzY2YYddD9l0bNezA26WaK4Q5yO
 oUEuzn3T_2NV3jGeyZeLEzidV7kqS2yG306kMykfpy2mDXtQIDHNGj0nyCW.NFUjycKK9CE1eQB6
 92FiY1tE2mGrcGARkrRJGhRs_poMe.m1FzxFfSvM2gn2kj4oWuFYQUFKHqpI3x2lLsI7W1rTrXd5
 FjD3WSNMpzV.XJVL6.I18ls1RGvh8B2TSCvcxkOzzDMDQEWYq554F2Zlg42YTKK30ZihJ4CjvIHp
 ff3Ih7BrXHWGFaYASML2S6WGOfBXXd_hUb.1yMxEEmOh73kfQ98OWv7NxZMy05vXGJq.M0zjfjLX
 rnegl8a7mNaV5HPRLYtndPDDO.w2Iilprad8M189t5g8iMOUH6yKLMJF._B34cGIk_IwHNGSw78L
 r5OKynYbDoAnPvqSGZqL41tzf9SuD1c6Rxd3cvdB6kaNCQZg4zD4dOtOXZ3_Vz7nM5g6FFAQ-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ir2.yahoo.com with HTTP; Mon, 25 May 2020 06:46:33 +0000
Date: Mon, 25 May 2020 06:46:31 +0000 (UTC)
From: Aisha Gaddafi <worldofjahovah97534@yahoo.com>
Message-ID: <1018947305.5008645.1590389191568@mail.yahoo.com>
Subject: Hello Dear
MIME-Version: 1.0
References: <1018947305.5008645.1590389191568.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15960 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138
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
Reply-To: aishagaddafi110@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Assalamu Alaikum Wa Rahmatullahi Wa Barakatuh,

Hello Dear

How are you doing today,I came across your e-mail contact prior a private search while in need of your assistance.
 I hope my mail meet you in good condition of health? Dear I have decided to contact you after much thought considering the fact that we have not meet before, but because of some circumstance obliged me, I decided to contact you due to the urgency of my present situation here in the refugee camp for your rescue and also for a business venture/project which I need your assistant in this business establishment in your country as my foreign partner as well as my legal appointed trustee.

I am Aisha Muammar Gaddafi, the only daughter of the embattled president of Libya, Hon. Muammar Gaddafi. Am a single Mother and a Widow with three Children.
 I am currently residing in Burkina Faso unfortunately as a refugee. I am writing this mail with tears and sorrow from my heart asking for your urgent help. I have passed through pains and sorrowful moment since the death of my late father.

At the meantime, my family is the target of Western nations led by Nato who wants to destroy my father at all costs. Our investments and bank accounts in several countries are their targets to freeze. My Father of blessed memory deposited the sum of Twenty Seven Million, Five Hundred Thousand, Dollars ($27.500.000.000) in Bank Of Africa Burkina Faso which he used my name as the next of kin. I have been commissioned by the Bank to present an interested foreign investor/partner who can stand as my trustee and receive the fund in his account for a possible investment in his country due to my refugee status here in Burkina Faso.

I am in search of an honest and reliable person who will help me and stand as my trustee so that I will present him to the Bank for the transfer of the fund to his bank account overseas. I have chosen to contact you after my prayers and I believe that you will not betray my trust. But rather take me as your own sister or daughter. I am willing to negotiate investment/business profit sharing ratio with you base on the future investment earning profits.
Apologetic for my pictures I will enclose it in my next mail and more about me when I hear from you okay. Please I want you to contact me here (Aishagaddafi110@hotmail.com) for more details.

best regard
Yours Sincerely.
Aisha Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
