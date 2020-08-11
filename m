Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2D7241718
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Aug 2020 09:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E888A876E4;
	Tue, 11 Aug 2020 07:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Z48UAm5YL5o; Tue, 11 Aug 2020 07:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 84428874A7;
	Tue, 11 Aug 2020 07:21:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E84E1BF338
 for <devel@linuxdriverproject.org>; Tue, 11 Aug 2020 07:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 75F85203D7
 for <devel@linuxdriverproject.org>; Tue, 11 Aug 2020 07:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VSKqfNzVeHHr for <devel@linuxdriverproject.org>;
 Tue, 11 Aug 2020 07:21:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic301-30.consmr.mail.ne1.yahoo.com
 (sonic301-30.consmr.mail.ne1.yahoo.com [66.163.184.199])
 by silver.osuosl.org (Postfix) with ESMTPS id 8DB00203C7
 for <devel@driverdev.osuosl.org>; Tue, 11 Aug 2020 07:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1597130499; bh=V09D8a1N75lUFkJxVR9aVpVPFU2IfPbM8afoyzXI9EQ=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=p2vdEi//2C0w6p1lhKeFS6TP6tZWsBAyW3j4vwCl6934e5BLTrfT+EG+Gv0FLtk0tk1qWkTFq6vqGyedIxztZML/ZVeDadiz4AAI6Uf5hOkY/SGiOGXImlC7ohcjotI9+lLiqh5DOMI63F5e9ZEIwWjslj/twEyL9W8lP4cZtZD6+t2PP/9/XeffVxF20r29TitwpUvRDUKQHRXAMr5KkK9R3dI8dAXlszc+8XYkPryXO08dNZUYtcdrjvVUdAgxnY7WJAcFb/KI9w8zuFj7InmoBVGyUEr6QDK1mfppsyVytucK0+suE7dBkh5tDhZtjGFsLMDOaVOj7nhY/BBqMA==
X-YMail-OSG: u7hPYMYVM1ne3_gdeE5qMRdOf5w7W1uZrH3SaHX5S8WBD4biDt4Yr9vFktJnQss
 Xbxqw7SaxpLeMwaC2Txc1VDpD4.KcGLdlK1aYdpeeTbT.e4P2CUBcSolCVtgdn3r9CLfS4FEW6Fn
 2rVMIU_ukYXkiwOilGKiC9Ltw0U2ubKgJ_Gg52wKDlA6u1JyCHkS7WypwNa3GRvCWmYVMRbfDOH7
 TKIHeH.x2tsucRPJMDYNiasAmvO21.M6WMGuSBrbjKqzbszyyHvzXcfFoiuOVAzq4n6YAEkYZRA2
 05cpMAyTqkFJLa1FblG97V_DxCWD12Ez3g6gIFdBp1tUgGqSmpzQIdSXTQwW8NAMX54Ho.jSxrR9
 MiMKtJUqwsRXnNmHLYeaLGjDiCzLWz7Ok5M7Hx.WvQOr0ENC1LLnZrCe400k.SkPOn6oyUm0eXXx
 YxCAILdzGuFqvIPW59Jgt5bGMCmLKdDY5zlVj7uCfbTmE2Sj6Xu4zJFfA0azNydbCUKgFiq.mzac
 .i0W51WZtewOu6NfP0IlTrUTADv3LPbvxT3d181aJNnOU6mfJcXT8xsgYJTFtWEaYUcrPZO.0o2q
 Q_s__hWHml1m51ax.2cgf_PCgyl2hA24zJkwfZh9QLscSe2jLcxPYsLiidPYr4U24dpyyDGybNPB
 Uvw_.owLH8qAlrFV95UgFwf0JVHx4MkJ4SUngs24AM_kN_86w36CuDRS1aOp8o1dyoEzd01k8bjD
 U.Pf0dofGG6aJcPsN9l5XZCbEWJqzF6iwEa2C7aYK_wYy9rJ3kYKu457e1922uFD2kli6S5PXIto
 rMSRLhTYiyxsswVmWJdH10zTH9jbC1PyCtODNUzXgeerFbI8bufYgdH5AGPqjdaBvEaW2UaN96En
 HnAM2YKWGtDZkrF4dwl5lolNmbdDyghSIOIT3WTBUocsE79nYyArSar.Ggj3hHr8YaWwsPC56teZ
 grQ3HYWvlcwEZkphK0qkwvFn9YKVzIq_SCLy8T9uZ8YY746BkHNRJaUVyqkHpeZLIKXD1wT1adT5
 HNENAM.2Y_IxLOlIJmoF03AY.K7PaYdmtHbM7rDNjhBdwlNiFCXvEt28.3WmGN3NRCwLVuGQbwXP
 rfAN4juIKEblEr7xrh8kY9LB6JdbEGBEsWQIdTkBjsseDE.5nQqsEevegYyZGnWPsa8Jlzrnjj8r
 uVEZK6kPTp3_el3moPR8qVPi1W75sxIyGwA2oIw7EoAqzkYO94eI5V0KHcGGgoCcNSDZ0Kre_BIB
 OgPqr_2ZGa1HXJ9rn1FLL.TpxE0ZFXPvqr978e35R0nhNGj0o9CC63YiSLiNYK.6X3sdqqqSfp9B
 _LGGC0nlnCvC5Ayk.e8xqn7njG8nIHFL27b9FYUSQNpUCxiM-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Tue, 11 Aug 2020 07:21:39 +0000
Date: Tue, 11 Aug 2020 07:21:37 +0000 (UTC)
From: Ahmed <ouedraogo.2.3.4.5@gmail.com>
Message-ID: <268564373.138673.1597130497747@mail.yahoo.com>
Subject: With Due Respect.
MIME-Version: 1.0
References: <268564373.138673.1597130497747.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16455 YMailNodin Mozilla/5.0 (Windows NT 6.1;
 rv:74.0) Gecko/20100101 Firefox/74.0
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
Reply-To: ouedraogoahmed@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear Friend,

I know that this mail will come to you as a surprise as we have never met before, but need not to worry as I am contacting you independently of my investigation and no one is informed of this communication. I need your urgent assistance in transferring the sum of $11.3million immediately to your private account.The money has been here in our Bank lying dormant for years now without anybody coming for the claim of it.

I want to release the money to you as the relative to our deceased customer (the account owner) who died a long with his supposed Next Of Kin since 16th October 2005. The Banking laws here does not allow such money to stay more than 15 years, because the money will be recalled to the Bank treasury account as unclaimed fund.

By indicating your interest I will send you the full details on how the business will be executed.

Please respond urgently and delete if you are not interested.

Best Regards,
Ahmed Ouedraogo.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
