Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1761626F9AB
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 11:55:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9902687309;
	Fri, 18 Sep 2020 09:55:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZKq-BVUbgQGY; Fri, 18 Sep 2020 09:55:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1087587313;
	Fri, 18 Sep 2020 09:55:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C17E21BF2A3
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B940C2E1F2
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bXRlMIt9bsBq for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 09:55:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C5B72E1F5
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 09:55:14 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MdNTy-1ksGo13Wjo-00ZT9d; Fri, 18 Sep 2020 11:54:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-rpi-kernel@lists.infradead.org,
	nsaenzjulienne@suse.de
Subject: [PATCH 4/5] staging: vchiq: convert compat bulk transfer
Date: Fri, 18 Sep 2020 11:54:40 +0200
Message-Id: <20200918095441.1446041-5-arnd@arndb.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200918095441.1446041-1-arnd@arndb.de>
References: <20200918095441.1446041-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:o5YtvpFms+IXCRExh5cRYd42tpuEg5KfjAbVxJj47+5fi1S3fIM
 cb14VSh7y6yeL19RZPIm44jP7f1Eexi5FcCjGHIUXhByj+5MU62qaT0Q1+pVpDYm3HCnYBo
 7RII9NfwIgzTIK3fL9W/OAskW+Ee1hzVd0Xf45SA/4/UsycwI2hF2qiLWGq+53gyHh58k+w
 gYn3VvvGN5FXLoLa2/h3w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:YYgeQCvuM7o=:tkShhY3txrgIHLVciEghnW
 +IIQIs1fZ3HLJNXg0hu+pXby6JGh+D0L4sPlNWxsPzXsbiEDXeVt4g+j1Npvki3D3OtyXQyv2
 0OAyzPYbz7ZR+8c6plA8nXa8/+Bg5lFpDTVO9/OhDj5507esYc7jpFOxS/x6AmlvUuwcrY4dO
 iI6BzPxhC6yZezokcQX90lvEkgF/9oNGEfCUIn79i9aMAshmgnWnq2CHAFsK63EECUtsSfFHC
 ddpqntShHi2aNctLa35i6RpLOA8rU/aMecMeBmBbqf1mLK+biJtKY25lcEceFb/YPtg1nLcN/
 hb8TZb4yDEUQEBJc2VSlrCOuCxpEYEIQxS8BBngjkROVbIG8yOsbfK/2scKNwESqS6oU4LDo8
 FUS89en+SB6SM3l2H+fcR1pL/wpq6S3dP8V+flzf6K3chu9I1fXzhXZnOCyl/LHkdLzZnWArZ
 XouWm6ZcYjNQRvKjvHi7zDk0QtkkQyN0Yh+wjwTgBUcnuJnO/ecObYnbXQ3qbfnO8+1IrspX3
 YZyKcaMHizsI1vfPoMor/FtliUeSrppE0YEZTP+Onp2ujP0CjhAJmjuwTjQAQSTwyj65rY8ZE
 EgeDndQMO3s155zn+gAVK29r8v24rpwdTb3qAfzOpVHxcpLcowoqdANHhYvlit+403ERxIZPc
 Dz2OC8VFB+l7RerO69YsvTmmp3qll3n581/awAjr5YBMlyBwEZwfMv8fF84jgFtDUfLcjQAK2
 UNqKycmzzirsGRqRIZmFDjSnbioWfhSWez9Av1qILtyqmVxYjx9MmEOjZywIFvyXE9SPKjhJz
 N52yoPy5WZNVAEj5defvbgWIyybCJS7d2CgzR/NIxi3b2cFkfqt8GQaR3xMs3kerbXtpIFc
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
Cc: devel@driverdev.osuosl.org, stefan.wahren@i2se.com,
 Arnd Bergmann <arnd@arndb.de>, gregkh@linuxfoundation.org,
 marcgonzalez@google.com, linux-kernel@vger.kernel.org, hch@lst.de,
 bcm-kernel-feedback-list@broadcom.com, jamal.k.shareef@gmail.com,
 inf.braun@fau.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Split out the ioctl implementation for VCHIQ_IOC_QUEUE_BULK_TRANSMIT
into a separate function so it can be shared with the compat
implementation.

Here, the input data is converted separately in the compat
handler, while the output data is passed as a __user pointer
to thec vchiq_queue_bulk_transfer->mode word that is
compatible.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 220 +++++++++---------
 1 file changed, 109 insertions(+), 111 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index cbe9583a0114..50af7f4a1b7c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -938,6 +938,95 @@ static int vchiq_ioc_dequeue_message(struct vchiq_instance *instance,
 	return ret;
 }
 
+static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
+				      struct vchiq_queue_bulk_transfer *args,
+				      enum vchiq_bulk_dir dir,
+				      enum vchiq_bulk_mode __user *mode)
+{
+	struct vchiq_service *service;
+	struct bulk_waiter_node *waiter = NULL;
+	int status = 0;
+	int ret;
+
+	service = find_service_for_instance(instance, args->handle);
+	if (!service)
+		return -EINVAL;
+
+	if (args->mode == VCHIQ_BULK_MODE_BLOCKING) {
+		waiter = kzalloc(sizeof(struct bulk_waiter_node),
+			GFP_KERNEL);
+		if (!waiter) {
+			ret = -ENOMEM;
+			goto out;
+		}
+
+		args->userdata = &waiter->bulk_waiter;
+	} else if (args->mode == VCHIQ_BULK_MODE_WAITING) {
+		mutex_lock(&instance->bulk_waiter_list_mutex);
+		list_for_each_entry(waiter, &instance->bulk_waiter_list,
+				    list) {
+			if (waiter->pid == current->pid) {
+				list_del(&waiter->list);
+				break;
+			}
+		}
+		mutex_unlock(&instance->bulk_waiter_list_mutex);
+		if (!waiter) {
+			vchiq_log_error(vchiq_arm_log_level,
+				"no bulk_waiter found for pid %d",
+				current->pid);
+			ret = -ESRCH;
+			goto out;
+		}
+		vchiq_log_info(vchiq_arm_log_level,
+			"found bulk_waiter %pK for pid %d", waiter,
+			current->pid);
+		args->userdata = &waiter->bulk_waiter;
+	}
+
+	status = vchiq_bulk_transfer(args->handle, args->data, args->size,
+				     args->userdata, args->mode, dir);
+
+	if (!waiter) {
+		ret = 0;
+		goto out;
+	}
+
+	if ((status != VCHIQ_RETRY) || fatal_signal_pending(current) ||
+		!waiter->bulk_waiter.bulk) {
+		if (waiter->bulk_waiter.bulk) {
+			/* Cancel the signal when the transfer
+			** completes. */
+			spin_lock(&bulk_waiter_spinlock);
+			waiter->bulk_waiter.bulk->userdata = NULL;
+			spin_unlock(&bulk_waiter_spinlock);
+		}
+		kfree(waiter);
+		ret = 0;
+	} else {
+		const enum vchiq_bulk_mode mode_waiting =
+			VCHIQ_BULK_MODE_WAITING;
+		waiter->pid = current->pid;
+		mutex_lock(&instance->bulk_waiter_list_mutex);
+		list_add(&waiter->list, &instance->bulk_waiter_list);
+		mutex_unlock(&instance->bulk_waiter_list_mutex);
+		vchiq_log_info(vchiq_arm_log_level,
+			"saved bulk_waiter %pK for pid %d",
+			waiter, current->pid);
+
+		ret = put_user(mode_waiting, mode);
+	}
+out:
+	unlock_service(service);
+	if (ret)
+		return ret;
+	else if (status == VCHIQ_ERROR)
+		return -EIO;
+	else if (status == VCHIQ_RETRY)
+		return -EINTR;
+	return 0;
+}
+
 /****************************************************************************
 *
 *   vchiq_ioctl
@@ -1118,90 +1207,20 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	case VCHIQ_IOC_QUEUE_BULK_TRANSMIT:
 	case VCHIQ_IOC_QUEUE_BULK_RECEIVE: {
 		struct vchiq_queue_bulk_transfer args;
-		struct bulk_waiter_node *waiter = NULL;
+		struct vchiq_queue_bulk_transfer __user *argp;
 
 		enum vchiq_bulk_dir dir =
 			(cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT) ?
 			VCHIQ_BULK_TRANSMIT : VCHIQ_BULK_RECEIVE;
 
-		if (copy_from_user(&args, (const void __user *)arg,
-				   sizeof(args))) {
+		argp = (void __user *)arg;
+		if (copy_from_user(&args, argp, sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
 
-		service = find_service_for_instance(instance, args.handle);
-		if (!service) {
-			ret = -EINVAL;
-			break;
-		}
-
-		if (args.mode == VCHIQ_BULK_MODE_BLOCKING) {
-			waiter = kzalloc(sizeof(struct bulk_waiter_node),
-				GFP_KERNEL);
-			if (!waiter) {
-				ret = -ENOMEM;
-				break;
-			}
-
-			args.userdata = &waiter->bulk_waiter;
-		} else if (args.mode == VCHIQ_BULK_MODE_WAITING) {
-			mutex_lock(&instance->bulk_waiter_list_mutex);
-			list_for_each_entry(waiter, &instance->bulk_waiter_list,
-					    list) {
-				if (waiter->pid == current->pid) {
-					list_del(&waiter->list);
-					break;
-				}
-			}
-			mutex_unlock(&instance->bulk_waiter_list_mutex);
-			if (!waiter) {
-				vchiq_log_error(vchiq_arm_log_level,
-					"no bulk_waiter found for pid %d",
-					current->pid);
-				ret = -ESRCH;
-				break;
-			}
-			vchiq_log_info(vchiq_arm_log_level,
-				"found bulk_waiter %pK for pid %d", waiter,
-				current->pid);
-			args.userdata = &waiter->bulk_waiter;
-		}
-
-		status = vchiq_bulk_transfer(args.handle, args.data, args.size,
-					     args.userdata, args.mode, dir);
-
-		if (!waiter)
-			break;
-
-		if ((status != VCHIQ_RETRY) || fatal_signal_pending(current) ||
-			!waiter->bulk_waiter.bulk) {
-			if (waiter->bulk_waiter.bulk) {
-				/* Cancel the signal when the transfer
-				** completes. */
-				spin_lock(&bulk_waiter_spinlock);
-				waiter->bulk_waiter.bulk->userdata = NULL;
-				spin_unlock(&bulk_waiter_spinlock);
-			}
-			kfree(waiter);
-		} else {
-			const enum vchiq_bulk_mode mode_waiting =
-				VCHIQ_BULK_MODE_WAITING;
-			waiter->pid = current->pid;
-			mutex_lock(&instance->bulk_waiter_list_mutex);
-			list_add(&waiter->list, &instance->bulk_waiter_list);
-			mutex_unlock(&instance->bulk_waiter_list_mutex);
-			vchiq_log_info(vchiq_arm_log_level,
-				"saved bulk_waiter %pK for pid %d",
-				waiter, current->pid);
-
-			if (copy_to_user((void __user *)
-				&(((struct vchiq_queue_bulk_transfer __user *)
-					arg)->mode),
-				(const void *)&mode_waiting,
-				sizeof(mode_waiting)))
-				ret = -EFAULT;
-		}
+		ret = vchiq_irq_queue_bulk_tx_rx(instance, &args,
+						 dir, &argp->mode);
 	} break;
 
 	case VCHIQ_IOC_AWAIT_COMPLETION: {
@@ -1620,47 +1639,26 @@ struct vchiq_queue_bulk_transfer32 {
 static long
 vchiq_compat_ioctl_queue_bulk(struct file *file,
 			      unsigned int cmd,
-			      unsigned long arg)
+			      struct vchiq_queue_bulk_transfer32 __user *argp)
 {
-	struct vchiq_queue_bulk_transfer __user *args;
 	struct vchiq_queue_bulk_transfer32 args32;
-	struct vchiq_queue_bulk_transfer32 __user *ptrargs32 =
-		(struct vchiq_queue_bulk_transfer32 __user *)arg;
-	long ret;
-
-	args = compat_alloc_user_space(sizeof(*args));
-	if (!args)
-		return -EFAULT;
-
-	if (copy_from_user(&args32, ptrargs32, sizeof(args32)))
-		return -EFAULT;
-
-	if (put_user(args32.handle, &args->handle) ||
-	    put_user(compat_ptr(args32.data), &args->data) ||
-	    put_user(args32.size, &args->size) ||
-	    put_user(compat_ptr(args32.userdata), &args->userdata) ||
-	    put_user(args32.mode, &args->mode))
-		return -EFAULT;
-
-	if (cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT32)
-		cmd = VCHIQ_IOC_QUEUE_BULK_TRANSMIT;
-	else
-		cmd = VCHIQ_IOC_QUEUE_BULK_RECEIVE;
-
-	ret = vchiq_ioctl(file, cmd, (unsigned long)args);
+	struct vchiq_queue_bulk_transfer args;
+	enum vchiq_bulk_dir dir = (cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT) ?
+				  VCHIQ_BULK_TRANSMIT : VCHIQ_BULK_RECEIVE;
 
-	if (ret < 0)
-		return ret;
-
-	if (get_user(args32.mode, &args->mode))
+	if (copy_from_user(&args32, argp, sizeof(args32)))
 		return -EFAULT;
 
-	if (copy_to_user(&ptrargs32->mode,
-			 &args32.mode,
-			 sizeof(args32.mode)))
-		return -EFAULT;
+	args = (struct vchiq_queue_bulk_transfer) {
+		.handle   = args32.handle,
+		.data	  = compat_ptr(args32.data),
+		.size	  = args32.size,
+		.userdata = compat_ptr(args32.userdata),
+		.mode	  = args32.mode,
+	};
 
-	return 0;
+	return vchiq_irq_queue_bulk_tx_rx(file->private_data, &args,
+					  dir, &argp->mode);
 }
 
 struct vchiq_completion_data32 {
@@ -1893,7 +1891,7 @@ vchiq_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		return vchiq_compat_ioctl_queue_message(file, cmd, argp);
 	case VCHIQ_IOC_QUEUE_BULK_TRANSMIT32:
 	case VCHIQ_IOC_QUEUE_BULK_RECEIVE32:
-		return vchiq_compat_ioctl_queue_bulk(file, cmd, arg);
+		return vchiq_compat_ioctl_queue_bulk(file, cmd, argp);
 	case VCHIQ_IOC_AWAIT_COMPLETION32:
 		return vchiq_compat_ioctl_await_completion(file, cmd, arg);
 	case VCHIQ_IOC_DEQUEUE_MESSAGE32:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
