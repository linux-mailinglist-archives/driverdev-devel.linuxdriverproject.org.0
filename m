Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E04466A55
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Dec 2021 20:18:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E31C540A76;
	Thu,  2 Dec 2021 19:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UReQ_vTB0twF; Thu,  2 Dec 2021 19:18:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9AFA840010;
	Thu,  2 Dec 2021 19:18:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD5711BF574
 for <devel@linuxdriverproject.org>; Thu,  2 Dec 2021 19:18:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC4AC60647
 for <devel@linuxdriverproject.org>; Thu,  2 Dec 2021 19:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 37pcDV-Dd1SS for <devel@linuxdriverproject.org>;
 Thu,  2 Dec 2021 19:18:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5AB06F4CB
 for <devel@driverdev.osuosl.org>; Thu,  2 Dec 2021 19:18:25 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id n66so1101612oia.9
 for <devel@driverdev.osuosl.org>; Thu, 02 Dec 2021 11:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=w9MrGyKd2YDseGwUIaDqf+NFOg4NK6csael6pLQ46v8=;
 b=jASAOZzpm3LqcO87Le3IDM2WbmE7FlyeBzsiFj574cr3pX30ZrQ4aIFkv4HnGLuZwZ
 H1eSPkh5NJ5ToTi2rvs5iVvj90eCfTFo/rOit0YkvciFZU10sWwaKYMYekclVNqZ6yzu
 bjtiQVePH7+Alm8zJ1xjcv4VnUSBCXNtTJpjDdxTVNkmwBpjUY/06lX0b226SFjFz5m6
 mqJvcHTt5uWJqIIyS8q0RHGQ1kLn7+r4aYGtfZ1SqR/0kRn7TZ3d2EjRwJjiT+kdw01z
 WRe9ZC/pq+C+ra9moXP2utFdk3KV28sn8E4AH27hzc+zSaSEEGVbdtOfijfvspIUp6g5
 TzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=w9MrGyKd2YDseGwUIaDqf+NFOg4NK6csael6pLQ46v8=;
 b=8Qss5Lbc/BeIPxEOTfZsjlOiHBaCN7FE6HWemuqNSOFmonlws2+qhgKEcwn2iLheia
 CEg2sDlcrTgDFaFbSewzY9BpYdLzXq47bNcbxSNRDLZEo42yfgVtLSg3uvec71KukevW
 tEKXmCkiBoX3Ma3t8KWtLPLDWz2yLTuNcchdlB72QOms73CSEE8r+B5yDDkDtGmJ7CjH
 zKYCOeLJ3SNfqnxAhUOb/LA3Os1POaTgDGBzH8PTXckh9ah4mOZd83hRAiwqG4PyrDUb
 r8bcHCyM9p2ZCYYjZYptFD3baXXuU/Y3JRnqi6J0DeX5BeUSc/okoGDqtakqK2mdksVS
 KdTw==
X-Gm-Message-State: AOAM531IVR5mt9l0jG23sxlTouPt4ni4lS+iUIotiYBP07pDaWHn27Fs
 49VFSOK4H41URZiI4FPBWrocMAKOq5QXvyw3Tgo=
X-Google-Smtp-Source: ABdhPJzG6CIwOn/WAN1hpZxD1ltawliNH2bzItsxv/53yrtWZoui38RbNIuCUSSaq7b+qXOYzIsL+vsYbdyPlNP7hIA=
X-Received: by 2002:a05:6808:ecf:: with SMTP id
 q15mr5980699oiv.57.1638472704597; 
 Thu, 02 Dec 2021 11:18:24 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:6801:0:0:0:0:0 with HTTP;
 Thu, 2 Dec 2021 11:18:24 -0800 (PST)
From: "Mr. Ali Moses" <alimoses07@gmail.com>
Date: Thu, 2 Dec 2021 11:18:24 -0800
Message-ID: <CADWzZe6_degQA22cpc_sUt7LUS5JnYOZcjOaazWmprimehn_9Q@mail.gmail.com>
Subject: Good Day,
To: undisclosed-recipients:;
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
Reply-To: confianzayrentabilidad@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
I'm Mr. Ali Moses, please a huge amount of payment was made into your
account. as soon as your respond is noted the payment confirmation
slip will immediately send to you.  please do not hesitate to reply as
soon as you receive this message. awaiting your urgent reply please.

Thanks
Mr. Ali Moses,
Foreign Remittance

Best regards
Prof. Dr Diane
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
