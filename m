Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D3F9A24B
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 23:40:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F9E0884E1;
	Thu, 22 Aug 2019 21:40:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6hWSwOR27pr; Thu, 22 Aug 2019 21:40:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD9A3882F2;
	Thu, 22 Aug 2019 21:40:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6EBE31BF2FC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 21:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B6CC20490
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 21:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Avl4-OyCysVl
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 21:40:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic301-21.consmr.mail.sg3.yahoo.com
 (sonic301-21.consmr.mail.sg3.yahoo.com [106.10.242.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 725B620451
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 21:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1566510046; bh=wbCv+8O2v3DMbJoa3tcT30FtNYMW8nrNMLMKGn43MF4=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=Oqdtw+1urQLO5lGYEnlGdw8q6wixQXx9jrYKpFfXdjxlE9hEIHVP5iEUsISkrfK2bHFyH4Nf3e4WAWqHNhaWKFmvWCh6/NIb43ih2V7phEmECQdOHFVa6CMfm9fcJ+IrHGLByl37BxUZB+gGv5iBhxrQKjlK6c527cTP8bwJPRcE4P3nw4hK5xJInMSL/RuQEMmue/NGwHT8i4eE7aaR5JiBmMck0gxZab0y0b/Vc4brZfUwHnrLC4uUUUHhC3dmVVuF+8MXor7mykfGGEqDmWT0sJmZHX/OmQdh/CS+6saKb5jd7VYEDGX14HkpwvTQKXWiGwLXnvy/gfPuYsJE+w==
X-YMail-OSG: 50PK3SQVM1lw1m6exzOv.A2u2Kq9y5OLp2mqhY1niamcF37kbmiG5X7R60U9cuU
 pz2iApP_m1LqpkCb6IC.6oMaBYi18XkKMb5ojAVngaLvV0zD3ZFljh6Rq36SrH5EHzYjpAErTTYf
 nngcrnBvRF5beW0fyOgxnWrfhwAHv9Yr9IIiM1_vRPea5lZDM89Q4TFEvnR.whVt_MMDih6Hs0.h
 dcMizFsBajYD.MiOhardE5FBoESeFLs9cvFFFeiyRNirH5TuSCt6M9f9vQXQs7Mq31bwQVOK.kZt
 G1GnknKpi7uquDs9bPTqsZa5ggZy9TctPJVHRxsdY9wjiZZ6BsbbTFdzynKu4Z3KBisaVM763sly
 uroe.ahczflS01ev2yPIUzo7yZKvXoIue0_xuANtIZOZKq09WXYjV9Q8nsx5xVCdeAQmLwz0VL2T
 gZCpXrOXIpWy2AqtH75Vz82C7lZyw9iw6ni80O5A_El0.piJrKbMucLSuHP4DlPVDkoytXgKkQNE
 VnTrMDaXae9V6v840MaivaKuVQ_e6gYYYfSrm_QVtFwSaWoHXWjZOE7HAMExFjJugE_7DzUmmvdI
 dYdhSfsDoV4.nWWSYxzNnV5NSEgdNoxrxtMfi7UiLM0JNlepPu_opWcwtQn0sdSn2y8SZb3.G6sN
 fpu0ovpJv2KqI3XETwPQchPl7X2lQelJjfwaD40eG9ahRKuvBigGE7BQMqSEf.4XqHQNlav_YRzM
 u0muLmW.2kqOqKMxa4UXUI65RN1qTuik_I3wFyjkDHw9J7ByVEffXeQeKVjeaJHFHnsIiwJ6_VZV
 72Uhv5j.wMWxLzBQKLqQ_VmsBHWWfEs5TLiK5hSiTCnWKfSV9EgFDHymGwSV_LRUMpMvFiphK7.g
 2o2SD4VEVC93_746F6PDdXVoR1YMeR9.0a960bfLs4lsNDHoxBR8w7qX7.mgP5ywHX5bMcrJnKPm
 sfQmg4MbfEz3A8uswGs.dVOJYOC_O9exBCXXWEWPQTJpEpR1zcAkKIOO5vsUp2YvSmq9PfW3xBuT
 Twtjvu3u09EV4vasf.6iRFxiqyTafnOHMaJffPGVUVR9MhpDc7qlFpsuI5OrfBAxRA.wHzIR91uu
 KaHPLCawdhIw1f49XB4xBfniiuSVMncJDORx5IFZQNB11VPaIy0wHegEZmyq7kq5jOTuJRuora6k
 kDcj5ll13AVtuYWJ9rsbUJrEil51lbkmWqOqDtuGbXRsbMCWWoidsdWNOHudAGh1on7f_xLsATIr
 HfkFK1t4jFNlm
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.sg3.yahoo.com with HTTP; Thu, 22 Aug 2019 21:40:46 +0000
Date: Thu, 22 Aug 2019 21:30:40 +0000 (UTC)
From: Bandile Macartney <info.fsvt@usa.com>
Message-ID: <1730655873.908733.1566509440981@mail.yahoo.com>
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
