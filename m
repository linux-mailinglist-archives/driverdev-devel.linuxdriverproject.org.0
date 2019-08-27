Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 692C39EB09
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 16:30:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 903948760D;
	Tue, 27 Aug 2019 14:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D0xqlFXcXH75; Tue, 27 Aug 2019 14:30:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7451E814E2;
	Tue, 27 Aug 2019 14:30:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CAC0A1BF568
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 14:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C7BD7869D9
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 14:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ODFLxhaKvT32
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 14:30:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 15593869D7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 14:30:30 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id t16so19046699wra.6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 07:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=p83Skcb28sZgDYz2+LArg9KtzzoTO/pqlqaaYMaERPA=;
 b=C9ojoburBdyvrO1W5OhNR5GqHXpb9J4P4Xz3l86a9+do5x+tVxsWmUP6zRnTza8Eum
 ljIYpXV+Sq7Xbs0G6VgDp9xBnL+CehiSwqGQFeiH/LU65vSk/mKB2pkk99UMTFYGnZTC
 moTXPwu/tT0TePeE35OywxxibJmQyZ3RvsFmI9pgQgl1pG1B6wK4Eb6aymhyhbFhD2Jt
 QNb1lTVh8758nEsl3kpo4rR6I/+Po7LJ42fNnF8oVuHmorZcXSCdVcxPxo8y3yQ9bzRk
 B/uSlWo+9tjaSvWyHBCHQ5fpS0sarVV+qEB8eDBrbmLfAW78DOZST+BX1KJNtcDOnhqs
 sKPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=p83Skcb28sZgDYz2+LArg9KtzzoTO/pqlqaaYMaERPA=;
 b=jBmt3PG0dtOutepUcRWLfWsLBbgZ6+bSK/Bqw9vuYko3TgfxB2hx9r0wQ7ue1Fpizc
 dvD3SaqlC2vaFjVYEgis1VyeouNWao5hIX+Bb1knx9uDfwBca/hMZZte6GCG2gmWa/8C
 SPznzbkqkaZPhSDiNI3IVbeT65OFvJ/vL4I56bM7jFMJ6/JCWO2WIG1hyFYzCr6VIlx6
 7J3OFAPG6l6XKUQoIAedc3Lk3B+/l+3635DNfafCpz2TytlDkRWuMPy6QJwclai2uMHk
 SvWmF+fZ3flBe9oyXp4yLHzuSrZDqdPn5PIZ4nMKHzYJjKwfPI9RwiWFOV7DXuI67qeS
 kY+Q==
X-Gm-Message-State: APjAAAXSFmZH0JfvMCC29EiEdZudwK6ySwUw9pUqBlGEMvM+qUWiKDFp
 GB11QfA6uMBtBPSG6elxOxkb0cyy6tE=
X-Google-Smtp-Source: APXvYqxBtyc6svJ8Xu3LT43sJMkaWOZO8khDahH9sqRD8n2Bz4iEEvBHOI9aCz41C2J6FWOFJiQnnA==
X-Received: by 2002:adf:e801:: with SMTP id o1mr30684004wrm.45.1566916228410; 
 Tue, 27 Aug 2019 07:30:28 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id w13sm40657283wre.44.2019.08.27.07.30.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 07:30:27 -0700 (PDT)
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190827133611.GE23584@kadam> <20190827134557.GA25038@kroah.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: driverdev-devel@linuxdriverproject.org
Subject: Re: [PATCH 0/9] staging: move greybus core out of staging
In-reply-to: <20190827134557.GA25038@kroah.com>
Date: Tue, 27 Aug 2019 15:30:21 +0100
Message-ID: <m3d0gqisua.fsf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,
On Tue 27 Aug 2019 at 14:45, Greg Kroah-Hartman wrote:
> On Tue, Aug 27, 2019 at 04:36:11PM +0300, Dan Carpenter wrote:
>> I can't compile greybus so it's hard to run Smatch on it...  I have a
>> Smatch thing which ignores missing includes and just tries its best.
>> It mostly generates garbage output but a couple of these look like
>> potential issues:
>
> Why can't you compile the code?
>

I think we are missing includes in some of the
greybus header files.

>
>> drivers/staging/greybus/operation.c:379 gb_operation_message_alloc() warn: check 'message_size' for integer overflows 'kzalloc()'
>
> That should be checked on line 368, right?
>
>> drivers/staging/greybus/light.c:1256 gb_lights_request_handler() warn: 'light->channels' double freed
>> drivers/staging/greybus/light.c:1256 gb_lights_request_handler() warn: 'light->name' double freed
>
> I don't understand this warning, how are these potentially double freed?
>
> And the light.c file isn't moving out of drivers/staging/ just yet :)
>

I will take a look at this also.

Cheers,
   Rui
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
