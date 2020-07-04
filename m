Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB912144A4
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jul 2020 11:18:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65A11875A7;
	Sat,  4 Jul 2020 09:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3s6CzEjW1tcG; Sat,  4 Jul 2020 09:18:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44D2986FA2;
	Sat,  4 Jul 2020 09:18:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9716F1BF298
 for <devel@linuxdriverproject.org>; Sat,  4 Jul 2020 09:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 90950885DD
 for <devel@linuxdriverproject.org>; Sat,  4 Jul 2020 09:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SVbG5imXMAwU for <devel@linuxdriverproject.org>;
 Sat,  4 Jul 2020 09:18:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic317-34.consmr.mail.ne1.yahoo.com
 (sonic317-34.consmr.mail.ne1.yahoo.com [66.163.184.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E2AD3885B4
 for <devel@driverdev.osuosl.org>; Sat,  4 Jul 2020 09:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1593854325; bh=0Wk2wk7l68zfqyTY1J9wiN0/3v3jJL0DInEeUBx3Qp0=;
 h=Date:From:Reply-To:Subject:References:From:Subject;
 b=Nc4RKDMpieJHwvezEy/TDsSPbVpM43JU8q8d/NFuXBswWIL0VXPTZbRnEE+DSy2UuYxBSj62DcaBNztwE2onMOT8YemZuul5crYk1QvV5aefkcnEoSFBfr7CzsL4Vs67A47u1EKddfIQBn891gZrPvKWZsRUY+7Kzt7OIaO2iZ+MIKZBw5W+5SqaVhdoK+NwpFs1r7icGN+lUprBnFnFKmP+M0V9k0tMeseIg0QXtsgX3RKg5ob4jt0gAtCrdooa3kBH+ERoYypHFiDCgQ+gx1kcV27jS3gh8RkGaoD0eFbd5JDnM/Cg8MDxGEy7zZxnQ97fptF5X/UhkcdjFYxCFg==
X-YMail-OSG: Xp6ELycVM1n_uh9nWOlPA1BZtjSdoouJlybZz6rmidaP1wjAsbQhS301glJEs1r
 TZm4jWWYzlxf.8s6Y.UPDphC6FRYMByRdhTUVwjEKZkvFLITVYQMaCbaJlZ27u4FoAz2WsHgy4KK
 V3H6MQTQ5JpKUsnUGiZsAdxAritxH33WNG33N8sNOJbDPY35WANNwipvYjlndLYK6uiJa7bjwNXc
 sMBEL4M9QV7Ktn3uoVRfcNGwDr._Baw4NmZvcgcQFW75nozTnCu_s9Ws11xn48x67sdDutmEhUKB
 wtwUXqgWc46QkHP9.djCQED4btDpgTQ41.oOVDSlE33q77Jiq0beRu9jCodIqY0L0sDQxej.e5VW
 OzNkaoe8Wz5tUAp4kF0VF616iqBYykhK_7giX8eqsOTxZ9FSORaIoquZJvsW1JAGAliPq2Jkbl8d
 E.T9ACodxJi14P6zTGlaffhUkGNbjGpRAvLwmTwt128jyC5bT9K7sa2qBHNtNHatBZpke8iBIVdi
 oI5ac_Yovfpht13Xr4zMwq2q0JeIRXNSzgeukT8oiVuWqqXCb0f0qHGjGqUDIpJbWNCPI_0O3UOv
 bYLf1RD9SiiZAhAhnrJnBoxya_qXza06.TY9jUby2Kvjs7_g2fOUZ_2K4G3r1clGslQ.CpNbk3Zo
 DaLPzR4lFtE6utSeHnvx2iY2O3UKUjCOFjgrasX1SjSAd60BOOqHYZZm6tk9fNZpn7.GU0FWt5AW
 ENPf.fdyhAzr1JhZpWvtWwSo.IKBfGPGNimzUvrmgUUpKCX24HZiSEinEt41y.22NQ7hZOmSN2fR
 _n9quN0w32BUnwpQsnGx6OtlssInS_rNapLMYg_NAk95eD0hJQyjcYshCuPOgy20XpVT.tulE6UC
 W4Bs9jBf_hlZriLPrhKkOviyqhpJPRaNdvn9AkV6Od9de0nRJWdf3tfKHxq_uPiU78Z9EQWYRi27
 MTtZ715yeEGMXTDIVEW6JlFDl3SHYQbK3pFdoXDR.Yb98m8xYF4cTNzQ15W5QNOKJR6UIAFRmdDe
 k.najvBMH_Q.oQTBPc5rVCDJISow5Az9dHkOAGqTEIG1IfougFJZHXRKpCB2DufJ6TrbbMQdZZV.
 ENa5tf3oUFu41SdTtJiTxqWl6k5TieNeteOSEhWBftaWgskzzId6eEIDogLR9w0eHb6RcBu9TJKj
 5ABT3cBNwa.HWQmbCRCnX_TwVPN9wJRgAAq9.uG9R01Z3wKI1h6hAEic75JN7lr1lzKf77d6_Gyr
 yHYH75WGJgkNfI5tC3d9z2KX7EEgosyEmgADQ8enjC5TN61Npdu4RQzy8Y.uv8AK19I8_MRt4
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.ne1.yahoo.com with HTTP; Sat, 4 Jul 2020 09:18:45 +0000
Date: Sat, 4 Jul 2020 09:18:41 +0000 (UTC)
From: "Mr.Bonson Mikeil" <gabreilthomas02@gmail.com>
Message-ID: <1347427678.2357249.1593854321621@mail.yahoo.com>
Subject: Dear Friend You Have A Good News.
MIME-Version: 1.0
References: <1347427678.2357249.1593854321621.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16197 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163
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
Reply-To: pt822249@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Dear Friend You Have A Good News.

I am happy to inform you about my success in getting the funds Transferred with the cooperation of a new partner from Vietnam who is an international business man. Due to your effort, sincerity, courage and trust worthiness you showed to me, I am compensating you with the sum of USD $1,800,000.00 (One Million Eight Hundred Thousand US Dollars).

I have authorized the Bank where I deposited the money to pay you Without any delay as soon as you contact my account Officer Mr Philip Thomas Be informed that Mr Keth Albah is aware of your payment and will be waiting to hear from you to process your payment, therefore Feel Free to contact Mr Philip Thomas and tell him how you want to receive your money $1,800,000.00.

Contact person Mr Philip Thomas Contact Email ( pt822249@gmail.com ) Remember to forward your current Telephone Wattsap number to him for easy communication and for urgent payment.

Please do let me know immediately you receive your money so that we can share the joy together after all the suffering at that time.

Congratulations

Best Regards.
Mr.Bonson Mikeil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
