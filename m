Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F4F91F42
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 10:45:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AC4F85C67;
	Mon, 19 Aug 2019 08:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id exZtsAVMCbxE; Mon, 19 Aug 2019 08:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDA2585C4F;
	Mon, 19 Aug 2019 08:45:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC2BA1BF350
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 08:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B288F87AF3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 08:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D7f6LJ7uL95b
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 08:45:47 +0000 (UTC)
X-Greylist: delayed 00:10:01 by SQLgrey-1.7.6
Received: from sonic301-8.consmr.mail.bf2.yahoo.com
 (sonic301-8.consmr.mail.bf2.yahoo.com [74.6.129.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D801A87A43
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 08:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1566204345; bh=47frjXP+ZIzYlnqEqbmJOhe9g4EhEvadJJ0Vh1NSIJc=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=fOP7+1DeEkBRnvDNva3yIuVROw0jLyJ+CaEktHOnaBZ0sRbhdO2t+NZqQB9ooiAK9HnGLYN9cJx3z+UFZT2wisMTMVZB6w+jvFHoJhH/Ax+ej6vYIFp5cjx838IHGG4IapMroHemQN6X35SKlTeSrPggHUvSKJ1n3dRck4NT4A/vyreAK97XAszI2qqiMi9G2oEJF5axjJa06XeLAUVsh1ZTWK5GcSfx0flz+taAP0YtoWuLab+/nv4veKAR6IABM2a+vD1wkiMM4tT3t7Acq/slZtr+j9ynb1hOJtCOP5wPfQqz1vgdg2FadGKq2DpS4YeFZCUYM509K6PMcitt+g==
X-YMail-OSG: jh1BmrMVM1k8EbAEvH7Ay_BA93fPZL._jLyayyG8XK4jqKMYONByf9_2NUKYpMn
 uUfpM6M59nCEQ3l9GCvLVr49aNePG12pJHlxz906aSDhmP4O_64hHgdfUip3YyAHRbBFYo_juMb3
 uur_PNzbthQVveZ5ZDjwe_jgGKndi6AAP9yFP63vdH9Z02P8ZAdwFEemYof4EyDGXLD9gzrbKFj6
 .OLGmAcofl.9kPrMvj_cwWpMuhZhynk4PH9xPYQ8Yf5ZsfGhph2G6c0SnUujtqlfmQwOBylW3Rh9
 rbpT8pFRvOfCUJzBIXhAImnxMXiCh5rxjEX3g1dFFbL6UAp4SrEHJov4jL4f8tOscpyDvfbwnl_6
 u7Kl1tWH8uN10EIHHhMEtUbv6AW40UyK0Cg45J66yOEJs0SMIOqUS8.oj_bEl5iU6VJ7DrJjgq6E
 5YIlM8fH7N16cu1mQDeh2qSuNYkNJ6eanmN5LANwhXeEJiuCQvuXyEG4P90NlyP9qh7z5rb3.lle
 7UGqdMAONSzx9YLYXWz_hd0UOkk9fUxTPmnApk_NI8e2CAjBsTyTqcL7sDrrIB6gx_MtjViPv_NE
 wKumiyEfGfwN0ferKxREdc.88CQe2DQYRu4mgi1qh0_6ChAmLnTXPZU34YzwIOUqISVXr6Nv6QhZ
 pq67AHs0iCov6qCfqlmf.s25Ujp5gh9iGCvNtrMn8SlTrRbwL4bxKFgKzaZ9tUUT1N7g42HuWkL7
 5E.NaFy6Rl3KWxLWwD5wU3BsDd_Ngedu84yZYWr4xDUgAY6dFCU_MbAsyapAZVrteZ7aUMHljV4q
 fwtnkxzc1_xymyHcRx02w0bV1WnWbvXnmWbocCd7E_zJXn20JHNEUiwPx2vwx4GRAgKnGmcsrtbC
 zB4ASgv9O5mcrCspD5pk_eM.gw9Dz4FW3MbOFRt0EWh0Qpt1sjkT_8YFmHsx0FOyjXaJJMOdgZ.Y
 WoNz_27POupM.cDB6ogz_OqEoKcKvhNVO49g4p5U0S0P.8Y_PZqRRA0SR2QJF2NHjAdMThtvPdA2
 TTIBfajCIlySab1nZRn_U7eEay7uSgkf7_hZ283qR0XUL5mGlPsik7p757SLyfO.3fhMcWdWpnLW
 iyDvV4imKCHZUOzS_hm4lMDkdvWRYnjj3CHT7w_7tPwtNE94M.ASm.JFKdjYC28K3gl2OHhQgsLm
 BLyxdzGCB1sn5v8ETGbDZmOTug8DhJ3sYv7mpktt9b0qTq0KPJ6qNMUJap8951OsS7aM-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.bf2.yahoo.com with HTTP; Mon, 19 Aug 2019 08:45:45 +0000
Date: Mon, 19 Aug 2019 08:35:41 +0000 (UTC)
From: "Engr.Francisco Pinto." <coz40@gatku.online>
Message-ID: <379841628.786414.1566203741980@mail.yahoo.com>
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
