Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 622BF188411
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Mar 2020 13:27:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55874263CC;
	Tue, 17 Mar 2020 12:27:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vRBQx7Y4QsBD; Tue, 17 Mar 2020 12:27:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 03FF526150;
	Tue, 17 Mar 2020 12:27:33 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 804351BF3B9
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 12:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76E1B26150
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 12:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZ7NV4YFzba7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 12:27:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic308-2.consmr.mail.ne1.yahoo.com
 (sonic308-2.consmr.mail.ne1.yahoo.com [66.163.187.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 487DF231C8
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 12:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1584448049; bh=kcevCRoll2+Bsa3FDERpIV72LVcB1A4YV1b5N2AWYBk=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=HrWEmRHBCs3iOEGV//ZjmV6wSi1Nlwr8Of3IZcT1g27Y+mk6OWRmvl1aESYTIc38MnYHSjDM4DfFSxz1hL5u/deO4IXu8LePLviwgtTx2Kidp1gnzmIGhxKBMb8tZ5U06a9p1uw0P6BORtlERg/Cx2mjGoLhY/AsL15wS9DF/0wANIRcKzYa0cZs6oB/8/3p9bCYIejOhSJN5ZXIeNaUeSSp9QlxvcgVVJuJWSB484nEZPdeApZRrFyaFCPG6F/umbsGl1vv8+xU/VMSVl7J+T+efLQ2/nCq0izcVzkBY3tWhC3qcfrH6XIuUcbZgFPGztA/V48FGpV0pn76UT0oYQ==
X-YMail-OSG: kiwY3a0VM1lXG2yd0FMEXcFEq4d1_NqzrDF8PKCrEvjngq_DbKpy1GCppZ9sJgS
 swORTXPim.EGzeGl3jMh_7PJc4L5FQVIodQeQl8WbcgLGL2Ji3mYYeyOF9Qb32eAh1N6q7PYPMp_
 MHLHci0hlpx8TzJi_V5AkpKk.vkNsoCCObxCeN_.VrqTFf4nwQxBCNMmbVD.esgLPNv9UEjuSP.w
 c7Pt2nyPF6PJSEFjuWE.ZHmrFiknTHs1b69SWkQuOFeZS876SncSu314oOiqwvqk_0EktP.Ozxz9
 DMAW_xo16P0VFW.Hti2fLaRX437yOGcX8rXWv5_Scu7T7R_5A2ucke5EUk5hwDqh3egfpMX9Kpuy
 8vciLBYPgaKQYiVlZyJq5Rn2xK0NjiN72PZkihcK4ia1AB44tYaUj8AvtxoECsozC482KXB_jrvl
 .sf.VPbnQ7qX.SsH6nU0kSzOBRymH6XdhiVl6FQ7PrapAHhwmnXKxnLKCnDVzf2IAruBblCYmPaU
 HnXAEgq76AePz8fm.1M8BoLzMdbpKVK9.mNyst0y7_qer615kKs4bHx4fLMOPvJVHTLJ83w6wlN.
 LNXp4X0D5y1OqP8NbnVuwGyDScMz2K4YobdSQ7PlOHB.Vysfp4iQSdN.ZIFbPy3Rldooz.HDHPKz
 sQhRKXM4Yii2zqTtRAppWIn_LzyCIblGjnm3PpFMHOTnSFWYLAOi5fG1BfsrYYdRhWNLxTqqzWHb
 q_fvTYvFm5oWMYggdElL9SaeqpWcrjsSoHnTdodoa6VM8UxQ_l1bX2EWOOolRdJRweXtqbP0vBUo
 WhYUmwOwXkJG.MBcFyMBiNG85cOyrRyAWO0cMKWj.01zBM1meJBQ3ds6amZoWmo.0ZyrS1xeoxbY
 rLaAasO3NDB25Sfl75t4xr8I.TUz8P4TDcf1QJCrsJG0Oc7QswtP.cUuKXnIrbmcTFC5Ci1eP_gn
 AJfl1yLgMGeMmg1WX1HQUPD3L1rhcBZ4P1jBHtHHYJA._8BVNJonIy2CspYYbTKkP.CUfqQI7Y4r
 gtBx9wAwpNVa4WjGqYPDD2qpHzfvrg3PC1J4clsinl2Qd_sRHpc_WnpsW.K39FU6j3pD3JathgtZ
 4ySMlixwy5hw7I0.4d39zNoihOQTg9QVkPvZhkbwKGMcl453fFGNZFHRmV_H3NEYTSkMQgsIQx2D
 p.tMlfVmvJRqmy1xjIqIoYgav_0dnsuhiqGMDBkKVqrzQm09yqbYGWCaCdpBO8sLZeNy6Pc6MkyS
 VGgfDKHxv0U3l00pQKAtd56IWIWRTfTaVEiMNEvCNl35pgtDb5zedZhBa7TjiL3ZwZb55_vF5bor
 gT0GQrqGgw0kQ0jiV5JxkNBdMsvfcQrQGiQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ne1.yahoo.com with HTTP; Tue, 17 Mar 2020 12:27:29 +0000
Date: Tue, 17 Mar 2020 12:05:26 +0000 (UTC)
From: Stephen Li <stenn8@gabg.net>
Message-ID: <877193668.1824808.1584446726464@mail.yahoo.com>
Subject: REF
MIME-Version: 1.0
References: <877193668.1824808.1584446726464.ref@mail.yahoo.com>
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
