Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B260F215973
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Jul 2020 16:31:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 78C87261DF;
	Mon,  6 Jul 2020 14:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bqRRkNuCqnsA; Mon,  6 Jul 2020 14:31:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6D199260A3;
	Mon,  6 Jul 2020 14:31:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F24B1BF29A
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 14:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8B94D8927A
 for <devel@linuxdriverproject.org>; Mon,  6 Jul 2020 14:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b00kagcvNZLd for <devel@linuxdriverproject.org>;
 Mon,  6 Jul 2020 14:30:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic314-19.consmr.mail.ir2.yahoo.com
 (sonic314-19.consmr.mail.ir2.yahoo.com [77.238.177.145])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C2B6589272
 for <devel@driverdev.osuosl.org>; Mon,  6 Jul 2020 14:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1594045856; bh=aZ84fmRfVoFrq92VR97+DM2dCDEPW1bCVPLe2xjRENU=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=VUxtf/nhfD7HrKKbBEu6NdfieZsvtsmiYXFFcmfRjm8G8zpUXVyVyppcHP2jwZHg31x8Wi3KvIwGcLhgoUv0QgeWtIBoWlAKjCcoDl/y2+lX0FV2tWW5eG6sx28kTb8xgL+Q7a435uZR85qSt66uqpo8TeunzXjQWALohBQHgVRyXNgWXPqVacZIQVIlNgbM79Cb7ey2uoXPFXwxIAkRhhlnFgEJCZrLjr79+BRaCLeehOCSV8HZN5wB4U0f+jGQErb54VS+vpZxYI0ZvghrEfrpJgDPvb1GuHQo1JW8XoLrtq87qCzFsuAuZSWo6EUIGTw/fZpzbSb5RYX8KIycOQ==
X-YMail-OSG: ZF248NoVM1klg_alJsyPSGOGOXUe4n.WLnoOb1rzUomhsNvcaOU4rdxsN3kIb.G
 NmR4aQwmSttff8kv36M3LIx6x_gjgJZqP4XH3F9n1ZiqQkoeaAsGs9AoOVuatlZZsIjjgz0fqSwg
 nmX0XRxJB3sR7VuEMHdW17Kwpm899a.3.yihH66gOF83CQPN8TxA6K4RZjT941qeGoU0usyzoZb4
 n5G63cYlO1kxJspQT03W8LfzIN7Jn8blBIq.A_xbg2hlEk.pxe0hrofeh9Y9NSXiCMTA239tV8RR
 IztJ65z2CJCa2egkiLOzLIGBSvPDoRBbooxGFAyMR2REG55y5mZknoTBN7rXxd1zTCJLHDB6d5.M
 F391_NH8L5g68RIba98Q.ENLhEDIh23FEfbOsjVJ91DYQb2JjW9s7yOiiq5oUdRnRm_Z63dfg48G
 e5IoGS5UeQ6LKizqO9XzrqW8tzRa0DIziEn2Kz_6IESgZ3Rtf9AC4WZnwRLgYzVD.Va7bXH0KKLy
 ydetQ7p99Ae3khAQW9p65Q03JC3ScBQZYpG6z5fuaGQ5zYkFTHnCkMcvv.UgNdgu7oqpjEA9Aeet
 2.O55gBvOx.mlJ21GTqGSWBbWATjwYaFd5b9jCREBVR0ke3K2d2I16CZejQgyxr8wc6ZiXi0CAjQ
 0SjQu_1rcuTgLdKvrBmPqCI7CTLelJZTO9B2VTGcvo5A8wbNY3NlSZ7wqSgQamNVtTOFBF_A8AKC
 2qaKJmn_Yo6zJVZUyeiFtO1C92.oq.m_oUw6bppbwJtFG8FRKHNozz24a1WUtnx9xmaozT0O_qb0
 cR7MRIGyh.PWmnkmqaIqzDTkR9Mh6XT0kn.JvFwIb2kGInLcGON_lfR6qhy_NwtgwMFKRE_R2xYp
 hMBtDV6QcwzMQY0YCHYkUg4E47d.jcDciTwpYq4A.vu1uTTblE5nsrMtEJZhTenlgKz86gmzdRig
 pRZAh8T77KyUHbW30epLFLsf7zVs8lS7hjRWbEYNhLoPqsPCh9p1KbNzJqKfXG9rJIXMlM1syI2o
 lg6aVurtVGxuz7j_VfZuW1WlcsI9GYF7ENeWFmuAM3wvT.k6tGJuIewijlqgJNZolvG86cDIlA8K
 WS051H3CgFI8xSsW0SXCSugdJUcuPjYztpOpPIcoo_MstW3nWjP0Y7y.r0YKOt2YRcxOiEav95yX
 cm9ng52WUCqTg3JZ5kIU6dPB0Ct9x0QJsbjiqlwapeFvmrIbo.eHtybSkj2fZJM4.8Igm19usOE5
 M6un.cgnriFKK2mEvpi.r6Me3aBg6mGSv_cYva.NPbnXlTAY2csQeodBjV1f7TleWE90WuPFTGA-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.ir2.yahoo.com with HTTP; Mon, 6 Jul 2020 14:30:56 +0000
Date: Mon, 6 Jul 2020 14:30:56 +0000 (UTC)
From: Aisha Gaddafi <worldofjahovah97534@yahoo.com>
Message-ID: <479128395.5669167.1594045856204@mail.yahoo.com>
Subject: Hello Dear
MIME-Version: 1.0
References: <479128395.5669167.1594045856204.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16197 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
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
Reply-To: mgaddafi034@gmail.com
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
Apologetic for my pictures I will enclose it in my next mail and more about me when I hear from you okay. Please I want you to contact me here (mgaddafi034@gmail.com) for more details.

best regard
Yours Sincerely.
Aisha Gaddafi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
