Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DABB9A283
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Aug 2019 00:01:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 017C1884E5;
	Thu, 22 Aug 2019 22:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmdrV7q5+tXI; Thu, 22 Aug 2019 22:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B61188466;
	Thu, 22 Aug 2019 22:01:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D4091BF2FC
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 22:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3A7D5204EA
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 22:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nR7qGNUHffbQ for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 22:00:43 +0000 (UTC)
X-Greylist: delayed 00:20:06 by SQLgrey-1.7.6
Received: from sonic314-20.consmr.mail.sg3.yahoo.com
 (sonic314-20.consmr.mail.sg3.yahoo.com [106.10.240.144])
 by silver.osuosl.org (Postfix) with ESMTPS id B65F120490
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 22:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1566511239; bh=wbCv+8O2v3DMbJoa3tcT30FtNYMW8nrNMLMKGn43MF4=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=hqwsd7nlodMpGf6K8Ini/jeCLeBInchxZR6eUleQ4ma9ylJVypGOdP+rhd3qdKdLi4HHotmFKVq6/C36JjOjy2WcZklWFBCOdEan4WhjQ54VwI4V9E9l8d9a9BbjiQ5QpONaO6oQtAS+EkOpRoCnpoipI9Bn6l1DbjAztGDxH6ToSQH89iFYgc8w0fBxpBPCG79VkwU8OSZU27jzC8+Tjh1b6y3G1HFXrK2Bsv5koRlM1Ft29u4H8smugq2y7LpY/p43DM9wOc87AP54VYeNOS289HCKuC6jCzNvHL5PlN2yOhDJL3fzVkLD4GIzSjck5I7HrtBqTz9l4BpgL5SYbg==
X-YMail-OSG: L_PV.ocVM1l_zeTHX94WrlsplW6b1G8EK_WN0HlZAWffU5PyOJjltrW.lsR9o5c
 CLoDiFCG0BB3gMCSuHJpOS6WfDZDLz8ltUQItamTi3T3MEByJyaHyKCbkwLT1ZrZe1no8CH_GUs7
 7UHEVjlEyZDJo8LybEXZW5JMs0.LMdk3oC0cI4p323WwS92YqnjPuJdNaxAdgElCbMn1nb4p3hBU
 MJ5FunBdrwgJgQv2Gh4uzMuYuKncU._EFA9R5oqa_5XPwYzQanufxGy1.8YXJwTYO7tTLgSlY8Zx
 _m_cvgqeYIG7AbxN99At.KfvWV59zfzfG2LyHGjJEfGk3l9mpp2_x5f3F9G_xXL159liKlsFvKbn
 VAstTfBWtFo2zMptXkYSxOy3spaHrqwcF11COsp0mh2sBvEAqh15O_zkPSqJmu0b6j8kAmqWJDFf
 Wb2hCus9kXlVfr5AioZLd62u6MKtCh7pL1uymcf6CaDpQatd80tslUMCzWQBd3o2cJ5fwDxOyNAO
 KuMhURTC7bGlBh_oKFZWjbonZY1Ah3jEMpl6DXHAnoRBl7uExSFB8AjIv9S_6HrzyJkNEMf_90mG
 I69zU1rcQ7XErvUNi0hqTLqi_a57WXX_zvo7vl.wt7Ch0IGQIkrcgL8mGYCjQ0bsLhCp9cNlBKte
 Ns1hd7xkZgZj9UJ1l6BwWSGYvHX3I65Dg8v_Lx7FTGq2mkbPOBGWqf1PtHOVS56AGxDCVl4caMAR
 IzLhPExfcgN2Y_hWLvirqQcx3zZ3AU4od0F0HU7MT15xCBUYZ2IUIIEVKLpBFRH1rvZza71Hjy66
 0ckBWH85W1lPBMb2nXPXUYidGy1n_SfRJDE.u00LtHdWrcnK_7B_KADwOhp2PIzC07u6WDuhGWjz
 QqjcEL3_yXfzubg7r9VkbNrTeatIbTuOGLIhFqo8ZGqUhKbmNv7uqYSkWFEjbAmwaopaR8x7spJg
 vDOrL3CG0C6v0hEhmkXGOnwsP6Bsu9nXOvq6cCkZpuerpm6Oezo1h.P9F.HPX6qFf0Jh2ihr2lHq
 sncFAhJ9wA6TW7X91Sep47tBffM_AK.Z.61h5E2FlCUjwLISmhrOnaIIQtKms6rtMtbJE8OMZ9t8
 BMwDiSpUZnoCgIPSwZXBPH7vlNqRHwWX3k1Wc87Et.hQ1r.WrAV1VPw491ueELSar_MmbeGCZ_rq
 ip1mC0yCfM42gF0ifZQDTmkQs.Yap9DwMoyZh6HEwwTjNtsaLE4Td_2BbQBxL1Tf_5hFBwfx1Fl9
 qoWX.hdM-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.sg3.yahoo.com with HTTP; Thu, 22 Aug 2019 22:00:39 +0000
Date: Thu, 22 Aug 2019 21:30:26 +0000 (UTC)
From: Bandile Macartney <info.fsvt@usa.com>
Message-ID: <2102739410.908728.1566509426893@mail.yahoo.com>
Subject: COMPENSATION PAYMENT OF $4,800,000 MILLION DOLLAR
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
Reply-To: paymentmanagement89@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



COMPENSATION PAYMENT OF $4,800,000 MILLION DOLLAR

Attention please,
This is to bring to your kind attention that the World Bank in affiliation with the (IMF) has sanctioned some African countries to compensate the scam victims, including people that had an unfinished transaction or international business that failed due to Government problems or due to corrupt Government officials. The compensation includes those that had lost their hard-earned money to scammers. Each of the victims will be compensated with the sum of $4.8 Million US dollar, to ensure that justice is done to the scam victims. This is as result of numerous reports of frauds perpetuated from some African countries. There have been reports that the victims had lost billions of dollars to the scammers, with the United States particularly targeted the most.

However, your details were obtained from one of the scammers who were arrested by the security operatives. Hence, the inclusion of your name on the list of those eligible to be compensated and that is the sole reason for contacting you, as one of those entitled to receive the compensation payment. Note, your payment reference number is: CP074653BF. The arrested scammer testified that there are other scammers and embezzlers of people's hard-earned money, for which the combined security agencies are working tirelessly to track them down. As security measure, you are hereby warned not to communicate or duplicate this message to anybody until all the criminals are apprehended and brought to book. Therefore, contact Mr.Alphonse A. NIGNAN immediately with the details as listed below for your compensation payment of $4.8 Million US dollar.

1. Your payment reference number:.............
2. Your full name:............................
3. Your address:..............................
4. Your phone numbers:........................
5. Scan copy of government issued ID document.

Contact of the payment Manager
Name of the payment manager: Mr.Alphonse A. NIGNAN
Email: wloalbert@gmail.com
Tel: (+226) 6232-4709

Yours faithfully,
Bandile Macartney
The secretary of the Financial Services Vulnerability Taskforce
924 W. 11th St. Tempe, Arizona, United States.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
