Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC5688B91
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Aug 2019 15:23:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE5B086248;
	Sat, 10 Aug 2019 13:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jcbnLRhhbpur; Sat, 10 Aug 2019 13:22:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAF81850EA;
	Sat, 10 Aug 2019 13:22:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93BC41BF36E
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 13:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B5DE20374
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 13:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZSWT+ixWWut for <devel@linuxdriverproject.org>;
 Sat, 10 Aug 2019 13:22:57 +0000 (UTC)
X-Greylist: delayed 01:21:32 by SQLgrey-1.7.6
Received: from sonic313-2.consmr.mail.ne1.yahoo.com
 (sonic313-2.consmr.mail.ne1.yahoo.com [66.163.185.121])
 by silver.osuosl.org (Postfix) with ESMTPS id DB30220369
 for <devel@driverdev.osuosl.org>; Sat, 10 Aug 2019 13:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1565443376; bh=0yZRAs2K8EgNtowDS47+CQ6hz4uC5FUSQzYCPddsx/4=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=iR8OYhhCiTWsSPh/bhXg+9MFb9jjMtgYagZuA2MumPmNacOIxREPWBRo0jAmnWAHHEfI7dPZsM5+ziiyngTJZudlRV4tzctYiwrb3zfaZMkuBGYmTwmaNQHCLWpyLPC7fIrD9YRr6EMX6I3zHUMHuZfVrt31IdhJdjmZ9+0bDoonW4UtFhFXnuDC6d3jAOMwVsXRtyGyr27zzmBFozIvoydARG3kVD2soSd7CMVA6VldLznLHezKxdSQoDbUomR6afLK01Psaoi88p84p78r7+5B3C7CXLbUWfmc9/l7jHI14wT1sKvJpHzWEY11TbFNBt9vjZKRttJbZ2qY9PGC1g==
X-YMail-OSG: dSwOORoVM1nW0w0mdkKQLfQ8YKmGtiaIeLRphiSxsk0swBz.tqnJJ35j.mQTOmj
 P0Xmdkh53JpRVeZnUKeNNspsanW7bVH8qQrSpjVFaByyzM9eXvQw1GB5na1gcNj4gFd3gy1TLImC
 AaggUtZF3_g0Uq86Mc522q8vqpgEZSVNCgRGoXi.lkzzjlFFKcRXGULRMr5RHOQGOo2fyrctMztu
 TqYOboNo72L023eDNERO6EzZPUQDiLzS.pGuwlnX.Q4mk2m6ytENeBeBoWN47OfktMcamy75FFUa
 1LwQfd.5XfqEPikiBz.ZA4Kv6t56pnTQ1WeVph0ULvoj08zQc0ktcujOzMFbp6Vq.hcZAYdZd.Dq
 DXM8Tmtz1q1cZPwwBictez23WP0oA4.qxRpnJxCkfISScSxpL27zOlBTU7TDy2M1Oi1P3Ekl5H.j
 8oIBh9.Y7WiE2P8nzSX5iZ6lJmq8oupErqpCIbjqrNo7LTdZc2yxkpIY6tfiVvwnwJWSiJfNL6YC
 E5AzXBkGY1eU60htJX.W3oKC5rVvx1q6OWUudNMl4UicdJWAzoo7jiynk5r0XOlSu07DOC6ZFWvi
 LEIbKm27tqN5kcikkdvippexw.0sHns.3Ki1P_RnwZ1Xt7ZwqI7ZRvTIlZFofqlg_UWY2eOKj1Bp
 Ybti3luwB14wGXISvZ8006JVFFLwJpYHc7V.o8wx7EVYrClJTLnFKTDdRVnxzdSsu12OqtpbltlC
 Q_2qM8xciDakJBTbL19yJXOcS3zkFbAZDwbrBi6G6djhoMdigPI6EeZxTIOTlUTj5VJyIOgIxV8M
 VysYbRTFytZaDjJll4_ZfzgAqjzzvebu6G8kEtbTa_ZsgUoym_DNvEEvsQnyxsTPZC2eLVKAZkgT
 6fcscQ8G8e1qk.NF3sOSGT8rKa3CTBve8A5melNrhhc.MuHAl3yj8L0qPAYhMhhauRftWPhp02rw
 ph4prI5W_e6ZWqNioq_CUDtXkm2Oq2ZHKse0sV_gAibA39.7.uqHWKrhDkgASc3_DTfKyi4qfP4p
 4d4loiOxwTKrEZ8c.7u7XDIvLomsTQHjlkiK0EXLpTK_foqkDV837xYqmWIGoqrAc8tIUYDMObSF
 .Z0b6iJitUnpWnveY7ShD6lyVn3hCx2qbb1l_rCVCdbvZyagQl9XPaj6w9gF3Ia4yzVwrNkpn5f3
 q7vIPO34xgPaGBbwkjmbXreSEueIfNinhSGn9Zi0lekgo9.2sc2XPXXyloguWseVSV_bmIQQ9UVG
 zuVvxsfKicIp4OdUp_DPnHqG63Yipj8tWKIqJZ4.cJts-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.ne1.yahoo.com with HTTP; Sat, 10 Aug 2019 13:22:56 +0000
Date: Sat, 10 Aug 2019 11:59:22 +0000 (UTC)
From: "Engr.Francisco Pinto." <mog10@gdgthj.online>
Message-ID: <574574171.3612610.1565438362563@mail.yahoo.com>
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
Reply-To: engr.frcopinto1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear Partner,
 CONFIDENTIAL OFFER REGARDING CRUDE OIL LIFTING CONTRACT.
 CRUDE OIL LIFTING LICENSE NO: ANP-C-STP/056432.
 Reply Email: engr.frcopinto1@gmail.com

This is a confidential business offer from the oil rich Sao Tome and Principe. Please ensure that you reply this email strictly at : engr.frcopinto1@gmail.com

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

Please in response to this email: engr.frcopinto1@gmail.com, quote the reference number. CRUDE OIL LIFTING LICENSE NO: ANP-C-STP/056432.
I look forward to a prospective business relationship between us.
Thanks,
Engr. Francisco Pinto
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
