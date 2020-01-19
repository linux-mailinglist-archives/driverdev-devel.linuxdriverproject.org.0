Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 998E4142042
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 22:41:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6264C203FB;
	Sun, 19 Jan 2020 21:41:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JxLKHioRDFEo; Sun, 19 Jan 2020 21:41:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A603C2000D;
	Sun, 19 Jan 2020 21:41:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 63BEC1BF599
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 21:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6072D8453F
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 21:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rU9dYagfQz8C for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 21:41:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com
 [209.85.222.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DBE75844C9
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 21:41:51 +0000 (UTC)
Received: by mail-ua1-f65.google.com with SMTP id a12so10847745uan.0
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 13:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/o+CA7VDRA7UR3HGeT8+/tYzwEnOXwq5B8ZHP2/HeYc=;
 b=li9xAWhjBjM8hHe2zqa1Kb42re3GfpnpdfqQtDevzcVODTTFaKE1UX0uJpWB6hkIp7
 yTA6rbamjgq3ypCDAPqhs/qQg4ymhcBUuJt42OPFLJc5lFhLeUrheg5pp71CY7W7j13s
 H5OqKDE2nZEjEt3V7CAQ2vTnwLVp7j7INF0zLZ0WOLnyqTrH1Hsw8hW0mB/F9nAiF2O3
 gy4kks/IQwCtDyGU6lgty16Ywdc4Xfemgn+IT0JUJOHgx7XDU5aTL+BKLO1gkfUaFsw9
 28kNL8LdT27tvjHNR9LV+GkxNL9uuzEUMveMDMizqubobETk/+LKaGL1fLim+VC0qjKU
 zS6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/o+CA7VDRA7UR3HGeT8+/tYzwEnOXwq5B8ZHP2/HeYc=;
 b=C0AVbhBzDabsDGHIZzcaoXJwi1y+Ro+QbbXcZG8suU7XaDUHQQWUm+MYLpk0CLtVFo
 ppYaX6NT0tD90gcGaLmK6ArL8skADSAOvBgdfLHHXhd79a537cIsxbLrA6AjfGNCSCkr
 myAPN8gFn6ZI/Orxqxc1oZqnkfvA10XlV25ncQ7TkipFSmpsEU7kNQrnzbHs4OLM97Of
 +5z4n6gvTqGYPn2BgFP2ND3FuP4sc5RzIoZv9Gl/dwrhl7eY/ZBxYa9avYKhk/EJmZ7X
 WmcUxB0T8D0mPmTVtXfNhY4uRIDyRVGMm/+1KhSSEBNNwDqZwwPG3hGQScXaGvFAzRf4
 pyXQ==
X-Gm-Message-State: APjAAAVmONZ2977EYp6hAjSFEkWyc195YiPVWnTSdH2yuPr0Rxy6xHkw
 zW/keSC6opG+zWE/xZDlZk0NRASYbJaUCczTy/0=
X-Google-Smtp-Source: APXvYqzKhevFzvqKo+mXOlnlxdHw+K28hVa2SKAyHFgf5GApXalRv+ehbxEvn0v29jbpzwzJZN9qvlwgAFTOLZ8BbgM=
X-Received: by 2002:ab0:32ce:: with SMTP id f14mr26632505uao.54.1579470110848; 
 Sun, 19 Jan 2020 13:41:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:60c2:0:0:0:0:0 with HTTP; Sun, 19 Jan 2020 13:41:50
 -0800 (PST)
From: Favor Desmond <jerrylawson206@gmail.com>
Date: Sun, 19 Jan 2020 21:41:50 +0000
Message-ID: <CAAy7SGVh48L4zd5X+LuJxDvxxKurcyKEqE+6LH-w4V=xdrnh-Q@mail.gmail.com>
Subject: HELLO
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
Reply-To: favordens@email.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Dear
Greetings to you,I am Favor Desmond from Ivory coast currently living
in  Togo Republic,I would like to know you more, so that i can tell
you little amount myself and my photo, email address is
favordens@email.com
Thanks
Favor
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
