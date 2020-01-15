Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 904A813CEB8
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 22:18:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5BC3B2079D;
	Wed, 15 Jan 2020 21:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B00FJrKP5LDH; Wed, 15 Jan 2020 21:18:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BDE5620C41;
	Wed, 15 Jan 2020 21:18:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B83A1BF2B7
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 21:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 728FF8653D
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 21:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bwh8STQg4BjW for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 21:18:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic311-14.consmr.mail.bf2.yahoo.com
 (sonic311-14.consmr.mail.bf2.yahoo.com [74.6.131.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 95EBB864D7
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 21:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1579123121; bh=Iw7hizhopx2E8VJp2X9V/AKZ0hcMDQhCMI5VzrDVz4E=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=gyq9ze6v6yes8DTq4eu3mN4ANm0t95x/msD/f68Nd1UVY6SBv26ul/Pj9O64m7la/QofijSx8z0H6XUReG3WtM78bDhTrbLSoRqk440WGwpdy7mMIgNvptrDZkU/YA/149nWVzsIWh+tagP+gR1crNCd9ONkFHbvGMhnOQFejGQWn4PyxQmWUEntXqjVmJFC5zjbZM9kxdLhzYmNYUdUCuUcdPeOS4ezgLTA7b+E39bLoLZJ3pHp2umLjyc7xku7RRqKeRwevV/fLtS61on+SDTdB3rux4UUF29/blloORXuFkzSAT09cRJgQMxmVX47T+O+m6KwhbtrF4KXbSgpkQ==
X-YMail-OSG: Y7ryLVIVM1lmLmpGcQa.w60xjLBW0BWrN8t.yCWRE64tzS0ET8P.2lBnXq13RNE
 V8wvH.bX1TaAXy5h_6aC2VPQ0rbWdGTONK5CRArqTsVmeC6qtMfh0icy8sW6QqgJ1UU8Ya6zdv2P
 k4UFLcpsd8uJHf7Gm_GFaYAD72Pft5BmhriSZvbgW9z7794urGqO.G26gSLCKPARBDre5VHnPqCp
 AspMXTxMea25WrQ9_MG3RPCGDk65iJChPhOBqprs.M9A0zaVXSVCYCjFHfD2CNc1fnfSOf5C4.yX
 XTscBajoQ0MYEG3v.lIpYM0LT3gUdFL34QLAy33rh3UvW3peey9Ix0mX9fVVlO8GGAeCeYN11WKF
 GEcuwlbQVNnDLHdTqkyozXOtEzJa5OTYjt8CSua2b3QwM.AfvMTaikBI.C5fNZ3370BYWtoWoUQq
 QUyGgFB92b90e1SKjSz5_N_d4DnimSzNOuqkn1BXER.D86k6KrLtIW.IieBxeVOyqGr8KWry4O4a
 KwW_bCVxqA4ZdS0aA9ziVSZKEc0XugD6inu1lxQgani4w8I58mtpJNiGjmVarSlhUfUi2FY52.bL
 5DsEUntc3lPHai6hMnVcjz6pr_SfyLU2iC9ukqx20DIKwJ3s3xaSdUFwcI1jdehG.Eju3lC.Hm29
 P7cAIcr3NrUF9X1dK4zHEXMFEwoi4N7fce32HVS6MqBs60C89QN7n5SU1H5BOmPpxkb3BNo04o9g
 o7JlDp_XNd7WAlxJl1NLTjEK0sfTAomsuXv8IGcCrd.M1ooAtBq6LU.VAgqbOZT.I.r1P_P8zkqM
 akMUL57tqO2UXoHFCYF2fEdIqH4Pid1U3YNYGXNH26EGydEk2Mh6NYtc0II0Bow2.5ym1KTLosU8
 ddqWdeer.1HRvPQEAUY4LlJx08.x1xNaGvz2cJebBX6eg.a3l0xbQCa3kDPt9D9O8_f0WNkGJTOI
 j33MH3ifKOJ50irDKeZvE._j74xkKDLPq3k80EAd8yI0Avam4uVl0OTNvVM8tHlZ4sF.2oZ2JjWM
 VX4RpTaNW6lTYxDMY7TC5bg1eWXDPaQfH3CqchIl3oXEyN7dsnQa9x_X1ubKoPg1wIx597LtzIua
 RmeVRDFQKqaBj1iKdRbFHcDIjEhBn3C3sWvPl31oFrlp_8C8UTQ2h71ypgL.pU.E0cLhhPJyT0p4
 IOC.UzBpXRuFYTjJITzh9Ow7qELl7YUbdSWyqG9KZz50j9TSG8pH_29sZSz3fMXmATNjbouxK.S8
 UdDF4ZfCyYhbjOjSja9ZVE7LrmvIHoeU.iC05wrxp4GtfUs_oCPIMhXNYn6RoLnxpwfhUXSipb.K
 68i4JMS7kw9QzSUAbrZ1J7ce_wZx8rktyL3fG9P4R9syAbhRl7lVcdFb5
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.bf2.yahoo.com with HTTP; Wed, 15 Jan 2020 21:18:41 +0000
Date: Wed, 15 Jan 2020 21:18:39 +0000 (UTC)
From: "Miss. Vina Omran Hussain " <missvin.aaa24@gmail.com>
Message-ID: <1203133476.8088722.1579123119046@mail.yahoo.com>
Subject: Dearest,
MIME-Version: 1.0
References: <1203133476.8088722.1579123119046.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNodin Mozilla/5.0 (Windows NT 6.3; Win64;
 x64; rv:72.0) Gecko/20100101 Firefox/72.0
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
Reply-To: miss.vina24@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dearest,

Good day and how are you doing today. I'm really delighted to communicate with you and I believe we can achieve everything together and create something great in nearest future. My name is Ms. Vina Omran Hussain Ibrahim  and I'm a young girl of 24 year old from Kobani a city in the Aleppo Governorate in Northern Syria and presently, I'm residing in the Republic of Burkina Faso as a refugee due to killing of my parents by the ISIS fighters on the year 2015 popularly know as "Kobani Massacre" that was carried out by the Daesh/ISIS fighters. Please don't be discouraged for hearing this. I believe deep down inside me that you will never break my heart or let me down in anyway.

My beloved father(Mr.Omran Hussain Ibrahim ) was the Mayor of the city of Kobani and also the Head of Aleppo Investment Authority. The brutal killing of my father took place one early morning by the Daesh/ISIS fighters as a result of the ongoing civil war in Syria. I was in my first year in the University of Aleppo studying Arts and Humanities before the sad incident and that led to the death of my beloved father. Darling, I know that it is too early to disclose my life story to you but please bear with me. My living condition is very critical, please I need your possible help to reclaim my inheritance and start a new life. My uncle have sought to kill me so that he will have full control of my father's estate but I am happy that all his evil failed.

Meanwhile, I decided to travel abroad in order to secure my future but the problem is that since I don't have an international passport, I cannot be allowed to enter any Country freely and legally. However, the only choice for me was to enter Turkey, because it is not far from Kobani and many people are crossing to Turkey so I joined them and crossed over to Turkey. It was in my presence that the Turkish soldiers gunned down Kader Ortakaya a famous woman activist at the Turkey and Syria border. A lot happened during this conflict, it was awful, I only thank God that I'm alive today.

I arrived to Burkina Faso through the help of International Red Cross and Red Crescent Movement, they were moving people away from the Turkish border because of the insecurity of the border, so they moved some people to Canada, some to Germany and Italy and few to Morocco and Burkina Faso. I decided to come to Burkina Faso, because when my beloved father was alive, he revealed to me about the sum of $27.5 Million which he deposited in one of the Banks in Burkina Faso with my name as his next of kin. On my arrival to Ouagadougou, where the Bank is located, I contacted them to clear the money, but the Branch operation Manager who confirmed the deposited amount of money told me that my status as a refugee according to the Laws of Burkina Faso does not permit me to engage in any Bank transaction. He advised me to nominate a trustee who will stand on my behalf and carry out the operation. This has become necessary after I have been denied the right to own a Bank account or perform
  other forms of financial transaction here because I am a political asylum seeker. So, I decided to get in touch with you so that you will help me with the transfer of this money into your Bank account for investment in your Country.  After you have received the money in your Bank account,  you will send me some amount of money to process my traveling papers because I want to relocate to your Country where I will start a new life with you.  And I intend to complete my academic studies in your Country.  I accept to share my life with you and give you all my attention from day one of the meetings.

Immediately you confirm your interest to help me, then I will give you more details as to how we shall conclude this transaction. Please do let me know if you are interested in helping me with the transfer of the money into your bank account for possible investment in your Country so that I will send you more details on how you will stand as my trustee and finalize the transaction with the Bank where my dad deposited the money. I beg you please to keep this as a top secret between us for confidential reasons. At the moment I am living in the Mission House. Life in this place is very unbearable because we are not allowed to go out and we are monitored by the Church security guard. Please help me because I want to leave this place quickly to live my normal with you.Please all communications should be through this email address for confidential purposes ( miss.vina24@gmail.com ).

I look forward to hearing from you soon.

Yours truly,
Ms.Vina Omran Hussain Ibrahim .
miss.vina24@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
