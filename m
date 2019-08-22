Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812F59A249
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 23:40:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 41569884D0;
	Thu, 22 Aug 2019 21:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6wpi6YvJ9NvK; Thu, 22 Aug 2019 21:40:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1DEA87E91;
	Thu, 22 Aug 2019 21:40:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B02741BF2FC
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 21:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD15886B5B
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 21:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ICaUd8xEyx4G for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 21:40:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic310-20.consmr.mail.sg3.yahoo.com
 (sonic310-20.consmr.mail.sg3.yahoo.com [106.10.244.140])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B1FAB86644
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 21:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1566510033; bh=wbCv+8O2v3DMbJoa3tcT30FtNYMW8nrNMLMKGn43MF4=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=b6ARj9K7DbISm3RC+BNffc1H4lYyRtZwI2KFiigASML4EcnQDi8zxBlL+yvj1ecAw+eK43XrHEHtvQVkURyIlvUNOCBDoH23+2Yr8gNQaLAJiTkozJt87l9uWIjWNNqtv8r993Fr2dkQzKT5fGAbxpYcqn8n+UFk8L5dcXMtKaqLRM1bwoK6enSS3Wfj5U1wrtN8VUDKtVdLwfNINP55YVeqquC/yim6RsqOEKms49c0zLywpswLtsq22DMC/+E1/NvHYU+0lb7RXwj4PNYQeRrfJxMco+7P+Ui/qaBZd6t7egBZINmwl8m+okbxsCbMGXEF79xSVgmru4+LCFyJSA==
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
 sonic310.consmr.mail.sg3.yahoo.com with HTTP; Thu, 22 Aug 2019 21:40:33 +0000
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
