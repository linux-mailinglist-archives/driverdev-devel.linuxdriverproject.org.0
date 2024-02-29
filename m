Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0BD86D263
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Feb 2024 19:33:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EACA41B97;
	Thu, 29 Feb 2024 18:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOJOL6i82_E1; Thu, 29 Feb 2024 18:33:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DE4241B9C
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DE4241B9C;
	Thu, 29 Feb 2024 18:33:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A52591BF390;
 Thu, 29 Feb 2024 18:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E85D60E49;
 Thu, 29 Feb 2024 18:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23T7bZ36tBOx; Thu, 29 Feb 2024 18:33:19 +0000 (UTC)
X-Greylist: delayed 436 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 29 Feb 2024 18:33:16 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0647060EAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0647060EAF
Received-SPF: Pass (sender SPF authorized) identity=helo;
 client-ip=178.32.154.118; helo=mail.landlineinternet.com; envelope-from=<>;
 receiver=<UNKNOWN> 
Received: from mail.landlineinternet.com (mail.landlineinternet.com
 [178.32.154.118])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0647060EAF
 for <devel@driverdev.osuosl.org>; Thu, 29 Feb 2024 18:33:16 +0000 (UTC)
Received: by mail.landlineinternet.com (ADSMedia MTA)
 id DC5422C8409; Thu, 29 Feb 2024 20:25:56 +0200 (EET)
Date: Thu, 29 Feb 2024 20:25:56 +0200 (EET)
From: MAILER-DAEMON@landlineinternet.com (Mail Delivery System)
Subject: Undelivered Mail Returned to Sender
To: devel@driverdev.osuosl.org
Auto-Submitted: auto-replied
MIME-Version: 1.0
Message-Id: <20240229182556.DC5422C8409@mail.landlineinternet.com>
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=fail (p=reject dis=none)
 header.from=landlineinternet.com
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
Content-Type: multipart/mixed; boundary="===============4771882686941791190=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a MIME-encapsulated message.

--===============4771882686941791190==
Content-Type: multipart/report; report-type=delivery-status;
	boundary="183002C83EF.1709231156/mail.landlineinternet.com"

This is a MIME-encapsulated message.

--183002C83EF.1709231156/mail.landlineinternet.com
Content-Description: Notification
Content-Type: text/plain; charset=us-ascii

This is the mail system at host mail.landlineinternet.com.

I'm sorry to have to inform you that your message could not
be delivered to one or more recipients. It's attached below.

For further assistance, please send mail to postmaster.

If you do so, please include this problem report. You can
delete your own text from the attached returned message.

                   The mail system

<simon.persson@landlineinternet.com>: mail for landlineinternet.com loops back
    to myself

--183002C83EF.1709231156/mail.landlineinternet.com
Content-Description: Delivery report
Content-Type: message/delivery-status

Reporting-MTA: dns; mail.landlineinternet.com
X-ADSMedia-MTA-Queue-ID: 183002C83EF
X-ADSMedia-MTA-Sender: rfc822; devel@driverdev.osuosl.org
Arrival-Date: Thu, 29 Feb 2024 20:25:55 +0200 (EET)

Final-Recipient: rfc822; simon.persson@landlineinternet.com
Original-Recipient: rfc822;simon.persson@landlineinternet.com
Action: failed
Status: 5.4.6
Diagnostic-Code: X-ADSMedia-MTA; mail for landlineinternet.com loops back to
    myself

--183002C83EF.1709231156/mail.landlineinternet.com
Content-Description: Undelivered Message
Content-Type: message/rfc822

Return-Path: <devel@driverdev.osuosl.org>
Message-ID: <65E05BB0.1060807@driverdev.osuosl.org>
Date: Thu, 29 Feb 2024 01:25:52 -0900
From: "giordano ziv" <devel@driverdev.osuosl.org>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.28) Gecko/20120306 Thunderbird/3.1.20
MIME-Version: 1.0
To: <simon.persson@landlineinternet.com>
Subject: Re:
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Hello There.

This is the last notice. 

I compromised your operating system thru the Wifi modem you were connecting to.

Some time back, I gotten to the machines that you utilized to get on the internet.

All the data from your electronics and devices was automatically copied to my servers. 

I can take advantage of all of your mobile messengers, social networks, emails, chats, and contact-list.

My computer virus repeatedly upgrades its personal signature (driver-type), so it remains not visible to anti-virus tools.
I reckon that at this point you fully grasp, why I remained quite right until this exact day

While gathering info in regards to you, I discovered that you're a big fan of mature websites and much more. 
You really prefer to stop by mature web sites and watch dirty vids whilst having an orgasmic pleasure.

I have already made a webcam recording of you jerking off. 
The cropping and editing of the video clip you were viewing at the same time and your genital masturbation.
Your own facial area is clearly obvious. I don't think this sort of information would-be really good for your status. 

I can certainly direct this video out to every person who know who you are.

I in addition have no challenge with making all of your personal info open public through the web.
I believe you realize what I mean.

It may be a true frustration for you.

I can wreck your life for a long time.

I really feel you don't want that to occur.

Let us resolve it this way: you transfer me 1300 $ (dollars) using btc equivalent at the time of payment), and I will immediately remove all of your info from my servers.
Proceeding that, we will just disregard one another.

My bitcoin wallet address for transfer: 112b2rLHpqs6fjmpvxmEEghhDWTY6HL1v3

Should you not understand how to send cash and exactly what Bitcoin is. Then key in the google search engine "Get Bitcoin".

I provide you with only two days to send the cash.
The time launched monitoring instantly once you opened this letter. 
I will get a message when this email is opened.

Do not try and search for help, as the payment address can't be tracked, email the note is coming from and cannot be tracked also and created digitally, therefore there's no point in texting me.
Don't attempt to reach out to the authorities and some other protection services, and if so, your personal information will be revealed.

Changing security passwords in social networks, e-mail, & gadgets won't help you, since all the data has already been downloaded to my servers.

Good-luck & don't do something stupid. Give thought to your personal future.



--183002C83EF.1709231156/mail.landlineinternet.com--

--===============4771882686941791190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4771882686941791190==--
