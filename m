Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 390861B7D5A
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 19:57:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA885204D2;
	Fri, 24 Apr 2020 17:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fQ0fSpQ4QM2B; Fri, 24 Apr 2020 17:57:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 32CA620466;
	Fri, 24 Apr 2020 17:57:20 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A7771BF2A2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 17:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 36C088776A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 17:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id obd0vhwoTB3o
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 17:57:16 +0000 (UTC)
X-Greylist: delayed 00:20:03 by SQLgrey-1.7.6
Received: from sonic317-32.consmr.mail.ne1.yahoo.com
 (sonic317-32.consmr.mail.ne1.yahoo.com [66.163.184.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 02A63876B2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 17:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1587751035; bh=7ELyVF1TY+atgcMFgVn9M9BygqHRBcTANas5h4WBA6Y=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=W0669bbnDBFOCi3YIW+Hj4ev09cAHmj+dECzeROno3eVRLVHcx5/o2SPzfTO6tGtnNIsp7Gwnx+VhomCuZlNTR72HaUjBr1GXPQwFK5Uqh8wuQuJjTD/L96SqTQCJlLtUb0QgBohjEBdN9mFJS3omc/NK4e5fW1JKFGB7e3sZFRV0VaiA9rr5iiwsx8DXJ9u2fV6tUprjue4niZ2ChvOY6K71rDlxMGUg437sthMkisdawe6sY5olvcChxRvdraTZTu4Ez5bhfwh4MA5gXSAjbcAdWq5KOLQqxHnxNC7Edqg5Bh8AU6UdY1syRJifFkXHpIGjH7/PNz2CzMAzL5Eng==
X-YMail-OSG: MN9yqwkVM1kNKLca23oKHrbte.2GURZp6mXU_7vaQQ4VLZnc2py1DYMndoftOLb
 RiB.6KyML9v2Mp8zZfMb97.2vWF1s_bEwRPPpU1d_rtmJhdJZ6DBp7Gqzp4.oJyWxlIST1OgVdAF
 HLXRPb6L.K94RZT5D82kIFT1wSzbPqqYmQJ0DY1ZXLTawKcrXggpg1qN618CEk8S6nBVPieXFqzF
 8OpIuSIA9KQgJCi18Ry4Bm0pyw67kIS1K43E5joHPRcmQiX7l8oiYK62oBleLDm8Wu2JJJfmHO63
 ulXnonbcPkKME8VgKODwZr5F1PXhhwOYW.jk0RD2Cl.8A8qEGQnU5Rz7A.YLvN_9I_Od6xIfBk1e
 Rll5PVGiG_UaAT9AyQVXMMvUgDJbgLt2CGYv6B9N4qwR6DID7ZYF8MU3J0s_M7KjDqZVbpCag1iN
 bnAmnjC.vJd.AGWMMNUlqs.j7__MBZedMJ8.fDcjF9D4hV5Zaf0jiLE0rq9kFLfyEWaQzgE5n4N9
 NUm_emdr0aRWgfvyXH6kkjBCMxdskkvHmipwYuich0f3CLBxjPyPB07v.utB2NtTnq1rutIrSwBM
 nIlndNtb5dFI09aTf9UyMwLM_KxEuQCwRXZrYlEld3GyAeC7AplUUNudlKRSWrAbpXteDD7KXYes
 zCHdnwN1M5rf_srRxah5rzL2dZYwblSySNIuBP2LgM038TYyhAtwRMZnKYO6ULY4zefDcsPcnbAM
 dgeSH8YuO7W0WP12wiIfd10exiksCtAFIkBhm6IXz5qlhlN7QnYVW1pR2vlQeoMxwNXww2Gpdg8T
 N77NZftUfs4VslrWhEAGiTBbIRNPDwHHeGLeTEURhNB9aH.fUwfZ6G1kpU.zzsLF1APUk422Z24u
 8rPKlCjBZ9_EsJ1XfinFbOInlXs1Cyna2fzMkmE5KAm8D5eLeL2705YMoxjjABbKdaKsiG1U23gl
 xANMlzsu7eS5Fr7CYvcaHT1AhSu9K3frAQZbsy1SRc.DnYqJhr_P6Ep1KKai1p06EqkWZtEsiW_9
 n7891dJAkQR8.mrqkfNDbu4x9TLnRq9ZGM4ewBns1wmXJ8QqQOoBsbenytmj4Ca8LF9F.tNxMKoR
 ibEtbwb8Ut7PgJa3zz27Vw32R7FobxA.Nbmm0RA56MAPVCuqI1omx4MgFgYPjibQOAj6jzJ51zx9
 jGl2jcRQ9qlkLdbdmGmpMgfYudJyVYIz8.fK9PhRBNA_t2c2bFgPB35vwLufAzcfpGmPWqCJSBMU
 psp99vGvUwkxnbg4MEmKxYtGu.dVbDr3ptRYrKmWq_DSEFK23vC1Wg5wI5XXaVRLoWoB19duaq74
 pPJTHSGz1JjlLrC3UDpkZ6DiedA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.ne1.yahoo.com with HTTP; Fri, 24 Apr 2020 17:57:15 +0000
Date: Fri, 24 Apr 2020 17:27:10 +0000 (UTC)
From: Keffier Robert <inf.org28@hotmail.com>
Message-ID: <2112610593.270446.1587749230063@mail.yahoo.com>
Subject: ATM Card Delivery.
MIME-Version: 1.0
References: <2112610593.270446.1587749230063.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15776 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:11.0) Gecko/20100101 Firefox/11.0 CometBird/11.0
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
Reply-To: dhlcompany71@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day,

I wish to inform you that your overdue payment worth of $1.8M USD has be scheduled to pay you through certified ATM Card which you will be only required to proceed to any ATM Cash Point to withdraw $5,000, 2-times per day till your fund is completed.

Meanwhile, the valid ATM CARD was registered with DHL Courier Company as a packaged. All you need to do now is to contact them on their information below with your delivery address for the immediate delivery to your giving address without any delay.

Manager Name: Mr. Gary Waddell Jr.
E-mail: dhlcompany71@gmail.com
Phone/Fax: (+234) 808 417 322.

Thanks,
Mrs. Keffier Robert
"IMF" Fund Delivery"
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
