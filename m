Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 394F086CF1C
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Feb 2024 17:29:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D4484194F;
	Thu, 29 Feb 2024 16:29:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VbxPVMeuG_2f; Thu, 29 Feb 2024 16:29:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A4BD419C3
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A4BD419C3;
	Thu, 29 Feb 2024 16:29:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BEACB1BF403
 for <devel@linuxdriverproject.org>; Thu, 29 Feb 2024 16:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB5CF41840
 for <devel@linuxdriverproject.org>; Thu, 29 Feb 2024 16:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8hl_WgwZJXck for <devel@linuxdriverproject.org>;
 Thu, 29 Feb 2024 16:28:23 +0000 (UTC)
X-Greylist: delayed 1730 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 29 Feb 2024 16:28:22 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B955A4042B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B955A4042B
Received-SPF: None (no SPF record) identity=helo; client-ip=148.163.137.197;
 helo=mx0b-00650b01.pphosted.com; envelope-from=<>; receiver=<UNKNOWN> 
Received: from mx0b-00650b01.pphosted.com (mx0b-00650b01.pphosted.com
 [148.163.137.197])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B955A4042B
 for <devel@driverdev.osuosl.org>; Thu, 29 Feb 2024 16:28:22 +0000 (UTC)
Received: from pps.filterd (m0288453.ppops.net [127.0.0.1])
 by mx0b-00650b01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id
 41T9wY5W018463
 for <devel@driverdev.osuosl.org>; Fri, 1 Mar 2024 00:59:31 +0900
Received: from intgsmtp1.hankyu-hanshin.co.jp (inetsmtp1.hankyu-group.jp
 [203.202.220.9])
 by mx0b-00650b01.pphosted.com (PPS) with ESMTPS id 3wexmxvj82-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <devel@driverdev.osuosl.org>; Fri, 01 Mar 2024 00:59:30 +0900 (JST)
Received: from intgimap1.hankyu-hanshin.co.jp (unknown [10.4.254.41])
 by intgsmtp1.hankyu-hanshin.co.jp (Postfix) with ESMTPS id CA30792
 for <devel@driverdev.osuosl.org>; Fri,  1 Mar 2024 00:59:28 +0900 (JST)
Received: by intgimap1.hankyu-hanshin.co.jp (Postfix)
 id 881768250682; Fri,  1 Mar 2024 00:59:27 +0900 (JST)
Date: Fri,  1 Mar 2024 00:59:27 +0900 (JST)
From: MAILER-DAEMON@intgimap1.hankyu-hanshin.co.jp (Mail Delivery System)
Subject: Undelivered Mail Returned to Sender
To: devel@driverdev.osuosl.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20240229155927.881768250682@intgimap1.hankyu-hanshin.co.jp>
X-Proofpoint-ORIG-GUID: ECvan94F9vVIiOZbhuxvrmFsdJATEuGh
X-Proofpoint-GUID: ECvan94F9vVIiOZbhuxvrmFsdJATEuGh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-29_02,2024-02-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_spam_policy_notspam
 policy=outbound_spam_policy score=96
 mlxscore=96 mlxlogscore=-142 suspectscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1012 phishscore=0 bulkscore=0 spamscore=5
 malwarescore=0 adjustscore=0 ndrscore=96 priorityscore=1501
 classifier=spam adjust=0 reason=orgsafe scancount=1
 engine=8.19.0-2402120000 definitions=main-2402290122
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=intgimap1.hankyu-hanshin.co.jp
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
Content-Type: multipart/mixed; boundary="===============4003071678060612019=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============4003071678060612019==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="86A2D8085D82.1709222367/intgimap1.hankyu-hanshin.co.jp"
Content-Transfer-Encoding: 8bit

This is a MIME-encapsulated message.

--86A2D8085D82.1709222367/intgimap1.hankyu-hanshin.co.jp
Content-Description: Notification
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

This is the mail system at host intgimap1.hankyu-hanshin.co.jp.

I'm sorry to have to inform you that your message could not
be delivered to one or more recipients. It's attached below.

For further assistance, please send mail to postmaster.

If you do so, please include this problem report. You can
delete your own text from the attached returned message.

                   The mail system

<lfhib@billboard-live.com>: host
    intgimap1.hankyu-hanshin.co.jp[private/dovecot-lmtp] said: 550 5.1.1
    <lfhib@billboard-live.com> User doesn't exist: lfhib@billboard-live.com (in
    reply to RCPT TO command)

--86A2D8085D82.1709222367/intgimap1.hankyu-hanshin.co.jp
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; intgimap1.hankyu-hanshin.co.jp
X-Postfix-Queue-ID: 86A2D8085D82
X-Postfix-Sender: rfc822; devel@driverdev.osuosl.org
Arrival-Date: Fri,  1 Mar 2024 00:59:27 +0900 (JST)

Final-Recipient: rfc822; lfhib@billboard-live.com
Original-Recipient: rfc822;lfhib@billboard-live.com
Action: failed
Status: 5.1.1
Remote-MTA: dns; intgimap1.hankyu-hanshin.co.jp
Diagnostic-Code: smtp; 550 5.1.1 <lfhib@billboard-live.com> User doesn't exist:
    lfhib@billboard-live.com

--86A2D8085D82.1709222367/intgimap1.hankyu-hanshin.co.jp
Content-Description: Undelivered Message
Content-Type: message/rfc822
Content-Transfer-Encoding: 8bit

Return-Path: <devel@driverdev.osuosl.org>
Received: from intgsmtp2.hankyu-hanshin.co.jp (unknown [10.2.1.23])
	by intgimap1.hankyu-hanshin.co.jp (Postfix) with ESMTPS id 86A2D8085D82
	for <lfhib@billboard-live.com>; Fri,  1 Mar 2024 00:59:27 +0900 (JST)
Received: from mx0a-00650b01.pphosted.com (mx0a-00650b01.pphosted.com [148.163.133.197])
	by intgsmtp2.hankyu-hanshin.co.jp (Postfix) with ESMTPS id 755B291
	for <lfhib@billboard-live.com>; Fri,  1 Mar 2024 00:59:28 +0900 (JST)
Received: from pps.filterd (m0288454.ppops.net [127.0.0.1])
	by mx0b-00650b01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41T9wXJG004228
	for <lfhib@billboard-live.com>; Fri, 1 Mar 2024 00:59:27 +0900
Authentication-Results: ppops.net;
	spf=none smtp.mailfrom=devel@driverdev.osuosl.org;
	dmarc=fail header.from=driverdev.osuosl.org
Received: from [119.157.235.43] ([119.157.235.43])
	by mx0b-00650b01.pphosted.com (PPS) with ESMTP id 3wf0vpmd2v-1
	for <lfhib@billboard-live.com>; Fri, 01 Mar 2024 00:59:26 +0900 (JST)
From: "birch iris" <devel@driverdev.osuosl.org>
To: <lfhib@billboard-live.com>
Subject: Fw:
Date: 1 Mar 2024 00:43:23 +0400
Message-ID: <002c01da6b52$05e996dc$751890ad$@driverdev.osuosl.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Acxqa1v7oxf2uru6xqa1v7oxf2uru6==
Content-Language: en-us
X-CLX-Shades: Junk
X-Proofpoint-ORIG-GUID: BMCLIbOmhnBwN2mAgICAozoBRmq4LcPJ
X-CLX-Response: 1TFkXBxkYHhEKWUQXYhlzThpEUh9HQmERClhYF2JoQx1taEIfeHJhEQp4Thd rcFAYBR1uaVljZhEKeUwXb01sHH8fU39gbXIRCkNIFwcZExoRCkNZFwccHhEKQ0kXGgQaGhoRCl lNF2BfREERCllJFwcZGnEbBgccGncGBxsZHgYaBhoGBx8aBhpxGhAadwYaBgcbGhoGGgYHGxoGG
 gYacRoQGncGGhEKWV4XaGN5EQpJRhdDXk9JQkJAWnVCRVleT04RCklHF3hPTREKQ04XaGdpZmNI ZUdCRGhdZBhHa01jaWtFUEVoeEdbHmZJemARClhcFx8EGgQZHx4FGxoEGxoaBBsZHgQZHhAbHho fGhEKXlkXTmxBHxwRCk1cFwcfHhgRCkxaF2wbaUN7bxEKRVkXTWsRCkxfF3oFBQUFBQUFBQUYEQ
 pNThdpbREKTEYXaGtra2trEQpCTxdmGQFrXXlQbxgbSxEKQ1oXGxsTBBsfHQQYGR8EHhkRCkJFF 21wEmwBUktJRnBHEQpCThdrcFAYBR1uaVljZhEKQkwXYmhDHW1oQh94cmERCkJsF2lLZ2VQeFNa GERJEQpCQBdtU0hQTk1McHpbbBEKQlgXZktOQWBDHmVBXEURCnlDF2hPWlJIHkMdeFxGEQpZSxc
 dHh4cEQpwaBdtH2Z7bkV8a2J+ZBAHGRoRCnBoF2d8YVJQQmVYXH8ZEAcZGhEKcGgXbBlvGnkTcB xSG1MQBxkaEQpwaBdlXFJfWBNYQVlLfRAHGRoRCnBoF2NmGxxmGhNzWWhgEAcZGhEKcGgXYEFDH FlbYE5bQ0sQBxkaEQpwaBdnbmxzc1sdSVJ9GRAHGRoRCnBoF2wef1lMGRlpQUFTEAcZGhEKcGwX
 ZGVdGnxJeXpaAWIQBxkaEQptfhcaEQpYTRdLESA=
X-Proofpoint-GUID: BMCLIbOmhnBwN2mAgICAozoBRmq4LcPJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-29_02,2024-02-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=hhhd_inbound_spam_policy_spam policy=hhhd_inbound_spam_policy
 score=100 impostorscore=0 mlxscore=0 mlxlogscore=-467 clxscore=-324
 phishscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 unknownsenderscore=20 spamscore=0 snscore=18 bulkscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2402290122 domainage_hfrom=7446
Content-Type: text/plain;	charset="UTF-8"
Content-Transfer-Encoding: 8bit

--- 自動挿入メッセージ -----------------------------------------------
◆ 阪急阪神グループメールサービス管理者からのお知らせ
 このメールは、セキュリティ製品にてスパムメールと判定されました。
 ファイルやURLを開く前に、メールが信頼できる相手先から送られて
 きたものであることを確認してください。
----------------------------------------------------------------------


Good Day.

This is your last notification. 

I hacked your system thru the Wifi device you were connecting to.

Just a few months prior, I accessed the systems that you used to get online.

All the information out of your electronics and devices has been immediately replicated to my servers. 

I can access all of your mobile messengers, social media sites, e-mail, chat history, & list of contacts.

My virus constantly changes its signature (driver-type), therefore it remains invisible to anti-malware software.
I imagine now you understand, the reason why I stayed quite until this current day

Whilst gathering info with regards to you, I discovered that you are a big follower of porno web sites & much more. 
You really love to go to adult web pages & look at filthy vids while getting an ejaculation.

I've actually created a cam shooting videos of you jacking off. 
The cropping and editing of the video you're viewing at that moment & your genital masturbation.
Your happy face is clearly seeable. I don't believe this sort of material will be really good for your personal status. 

I can certainly direct this footage to every person who knows you.

I also have no trouble with making all your personal information open to public on the Internet.
I believe you realize what I mean.

It would be an absolute problem for you.

I can destroy your daily life forever.

I really feel that you really do not want this to take place.

Now let's solve it that way: you transfer me 1300 $ (usd) via btc equivalent at the time of exchange), & i'll right away erase all your info from my machines.
Following that, we'll disregard each other.

My btc wallet address for transaction: 112b2rLHpqs6fjmpvxmEEghhDWTY6HL1v3

If you do not realize how to transmit money and exactly what Bitcoin is. Then key in the Google "Buy Bitcoin".

I present you with three working days to send me the cash.
The timer started counting automatically as soon as you opened the e mail. 
I will get an alert once this e
mail is open.

Don't try and search for aid, as the wallet address can not be tracked, e-mail the note is originating from & can not be tracked also and created digitally, hence there's no point in texting to me.
Don't  try to contact the law enforcement and some other security services, & if you choose to, your personal information will undoubtedly be revealed.

Changing passwords in social networks, electronic mail, and devices isn't going to help you, as all the data has already been downloaded to my computers.

All the best . & avoid doing something foolish. Think about your own future.



--86A2D8085D82.1709222367/intgimap1.hankyu-hanshin.co.jp--

--===============4003071678060612019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4003071678060612019==--
