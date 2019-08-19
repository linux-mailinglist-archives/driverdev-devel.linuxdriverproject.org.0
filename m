Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E19FE91DB9
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 09:24:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60DAD85CA3;
	Mon, 19 Aug 2019 07:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xyU8k2alZh_y; Mon, 19 Aug 2019 07:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A53D685A97;
	Mon, 19 Aug 2019 07:24:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3118E1BF963
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2CAD185A97
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXQtIjAqaZhm for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 07:24:02 +0000 (UTC)
X-Greylist: delayed 00:10:00 by SQLgrey-1.7.6
Received: from sonic301-36.consmr.mail.ne1.yahoo.com
 (sonic301-36.consmr.mail.ne1.yahoo.com [66.163.184.205])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D9FCD85712
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1566199441; bh=47frjXP+ZIzYlnqEqbmJOhe9g4EhEvadJJ0Vh1NSIJc=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=mxsXyo5IISVV+H64D9UJu3LhXC4sdRkn/5ynPO1XERSS0cqt9SHzikGWDJKB080hCjiphnIU/RRBkuMZIddVS7MA5pCDxPXHoDV3fVaPoEM38aEYHM+sGCRWabQHil+gI3t3kR3WiNHP70JnJd1WVSdyGMYL85a45STVsDb/RzIAQtWkkvP45BQK4TK/elSko+TlXijAuCvWDVE2xvvICN22QjoB8MlLSA8MAaDCobG/yWeuAmhyCxUUyixlst04stOmorrNa9foHYL8AWbeJZXDKr4jEPhOcna2iaZ7hm4jv0P+bsuzPK1inXCLBZxz6QJbC0nKc9TXC9PFLPEN+Q==
X-YMail-OSG: Vi0hT4UVM1nHedIwEwoSdzGvoAXT3Q_JhIQ.dNJ7sVb17ih5IhbNrr0eKCvcwRd
 Ig0klml1rjXIkDLRJAf7e0I90xpEITF3R6eBvRdMjRYtByrpK4YAB5rlD1MpFq5Pp0kilih_IFvd
 MWTyGHW5bkS_guwlwL2Oqbd9cpGGUvl0tOaFNpoOXw4MwKn5yiLljeW5X3JYajq.0J9jlgN.P7Xm
 9NgH_g0GwgV356oEb0yzYjRq3EHXxAO6MPgF5fKSGownF45YbkbPeVm0Prk0shj4.kFrhpudLzzy
 8txNEj34KsPkMblg5Q3NMT78uzR2YUXkqGCMpV.u2n_i3TG_.hL3Q7BZa6u8AqKerYaipKbsjc.7
 fKrmZ46x7U9zgRxkj7orl6X24NDYjgi59xkuv7SDblFWTAipQNzcjj_5trDQ0QTJ17IuM3Sk00W.
 .uk8GLltV39WiUEx4M0emTnjir1kBoTY..drMc6bs2QrUCP4gSKYtq4LH4RjJl32WVeqy.KKqvgw
 n6h.bhEHA8Su5mPJwBNoY53pof7u2AX1jzUQ874nJ5ly0OMn_u8uLhFdRb94fDvmhBs19Rupg.q2
 jN3ychoRTqJmJFqtS7Q40Q9Qg5NwjRjeLAFNkcg56k8_qNJ3gzA3cM_zChJhGyktzE6wizmQ9R0h
 Us3RmjshXXgAE7LQn2W4V8YTCbkzcSaoJ8hT1kG30.HgxJT7xnk7scQC9.KrwFw7DMyfY4tBth4.
 Hw_osGPOAK4dSDnWI7xJbN.GLXMbccx4HAYDfP_cSF_JYJ9FBci5RQ4EuoAei6uU0pFMrVUyh6C_
 Mnzp6zbEiHiKt90uEEsY5EBdRYVjteKXn4D05zGgd1DqIxPvENV5yKpJ5IP09QW8YKBesi2R.bx3
 uGh65b1eqyn3qA56RTS3tiSUMGMC2rkTzppimiMSet9Y2DTlB88xt7aivzGtrVWudTb.4qS.2c8w
 Psc0SqnRC6W5vje.lQZs0wNO0gI2QJvxOdPOeFSfM_ikqaQ54wedHCIr8CFQ7wjjkqrYPotGiFvY
 sGntcfoKFq2Qgq8Vwmpt0.Ioz2CPOZEk91dn4qiBS7BY_P_xtuR5F_EtSuG934bY3zO1369gHqFm
 8VFWbr.88Grre5gnXaSImU0KT6yBV0x5bP5JsEZWOGGlQoUifouqGpr5kWANvAVzUzrqJXRaIk6G
 xorh3kredt6g6_np1lr3NT_qw0EqUPRPEGv0V3NzE0cfOBFhnFIfjrBRKK1d_w2FI.qxp13w6eQ-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Mon, 19 Aug 2019 07:24:01 +0000
Date: Mon, 19 Aug 2019 07:13:55 +0000 (UTC)
From: "Engr.Francisco Pinto." <coz22@gatku.online>
Message-ID: <1004440112.7128331.1566198835893@mail.yahoo.com>
Subject: Crude Oil Lifting Contract Offer.
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
Reply-To: engr.frcopinto@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear Partner,
 CONFIDENTIAL OFFER REGARDING CRUDE OIL LIFTING CONTRACT.
 CRUDE OIL LIFTING LICENSE NO: ANP-C-STP/056432.
 Reply Email: engr.frcopinto@gmail.com

This is a confidential business offer from the oil rich Sao Tome and Principe. Please ensure that you reply this email strictly at : engr.frcopinto@gmail.com

I make this introduction based on my regard for your credibility. My name is Engr. Francisco Pinto. I work with the Sao Tome and Principe national petroleum agency. To be precise, I oversee the issuance of oil allocation license for our oil company. My position in the agency entitles me to recommend oil allocation bidders and actualize oil lifting and exploration allocation licenses to my candidates based on my interest. I also oversee and approve the issuance of the license for oil allocation in our company and also monitor the lifting procedures in our company.

In June 2007, I facilitated and actualized the license of a candidate. A business man from Korea (Comprehensive details to be provided subsequently). The license was for 1 year at 24 million BBLS/12 months. Incidentally the candidate was no more. The license has been valid till date (as I always ensure that I keep to my side of the bargain), I have decided to begin using the license from AUGUST. I am in need of a partner from your country whom I can trust. I will package this partner as the allocation license beneficiary and assign the license to this partner. Due to my position in the petroleum agency, I cannot handle this position. Your profile fits into the criteria of a partner I need. This is why I am contacting you. With the trend of events in Sao Tome and Principe, we shall be able to lift a minimum of 400,000 barrels of BLCO per month. This will fetch us an average of US$28 million per month. And we have from AUGUST 2019 up until AUGUST 2020 to lift crude oil which wi
 ll fetch us approximately (12) x (28) Million dollars. This is approximately 336 Million dollars for the rest of the time of the license allocation. I have ready buyers who are waiting and would be ready to scramble for any number of barrels we lift. Also, I will oversee all lifting procedures with the available mercenary around.

 THIS IS WHAT I PROPOSE.

{1} Your Company profile shall be used in place of the initial license Operator. This I shall handle with my capacity in the company.
{2} I will ensure that your company's profile is recognized as the current license operator and that we have a mandate for at least min of 400,000 barrels per month, a maximum of 500,000 barrels per month. Starting from AUGUST.
{3}I will ensure that all lifting procedures are in place and buyers readily available to purchase the product.
{4} You shall stand in as the license operator for all lifting and sales transactions; we shall open an account for the receipt of the oil sale proceeds in which both of us shall be signatories to the account or you can provide your personal or company bank account to receive the payments on our behalf.
{5} We shall split the oil sale proceeds in the ratio of 60:40 equity shares. I shall be entitled to 60% share while your company shall be entitled to 40% share.

Please note: no third-party arrangement shall be allowed. I believe you are a man of wisdom and intelligence. This offer I make to you is based on utmost good faith. I could be Jeopardizing my position in the agency if a word of this goes out. Therefore, without mincing words, I rely on you for utmost confidentiality on every bit of detail relating to this transaction. I am in London on official duties at the moment waiting for your response. Upon your positive response, I will be willing to forward to you proof of my proposition and my personal identity. Also, I shall fly back to Sao Tome and Principe and from there we shall commence operations. I shall also provide you details of the former license operator and a copy of the license issued to him for the lifting of crude oil in our company which I personally approved and endorsed. Also, procedures for license reassignment and actualizing the rest of the project shall be provided to you.

Please in response to this email: engr.frcopinto@gmail.com, quote the reference number. CRUDE OIL LIFTING LICENSE NO: ANP-C-STP/056432.
I look forward to a prospective business relationship between us.
Thanks,
Engr. Francisco Pinto
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
