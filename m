Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC47ACF571
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 11:00:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 811A5861DD;
	Tue,  8 Oct 2019 09:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1pbNm6XiqRJq; Tue,  8 Oct 2019 09:00:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 281D686191;
	Tue,  8 Oct 2019 09:00:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EBBC91BF337
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 09:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E829D86190
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 09:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3E17_bX0QaLD for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 09:00:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E280E860C2
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 09:00:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 02:00:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; 
 d="gz'50?scan'50,208,50";a="394612104"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 08 Oct 2019 01:59:59 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iHlLa-0007la-W1; Tue, 08 Oct 2019 16:59:58 +0800
Date: Tue, 8 Oct 2019 16:59:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Nachammai Karuppiah <nachukannan@gmail.com>
Subject: Re: [PATCH v2] staging: vc04_services: Avoid NULL comparison
Message-ID: <201910081624.53MjfKQi%lkp@intel.com>
References: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yy72wus6berbrfz6"
Content-Disposition: inline
In-Reply-To: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nachammai Karuppiah <nachukannan@gmail.com>, Eric Anholt <eric@anholt.net>,
 kbuild-all@01.org, Stefan Wahren <wahrenst@gmx.net>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--yy72wus6berbrfz6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Nachammai,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/Nachammai-Karuppiah/staging-vc04_services-Avoid-NULL-comparison/20191008-143400
config: x86_64-allyesconfig (attached as .config)
compiler: gcc-7 (Debian 7.4.0-13) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function 'vchiq_ioctl':
>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:829:10: warning: suggest parentheses around assignment used as truth value [-Wparentheses]
      while (service = next_service_by_instance(instance->state,
             ^~~~~~~
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function 'vchiq_instance_get_use_count':
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2926:9: warning: suggest parentheses around assignment used as truth value [-Wparentheses]
     while (service = next_service_by_instance(instance->state,
            ^~~~~~~
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function 'vchiq_instance_set_trace':
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2953:9: warning: suggest parentheses around assignment used as truth value [-Wparentheses]
     while (service = next_service_by_instance(instance->state,
            ^~~~~~~

vim +829 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c

   798	
   799	/****************************************************************************
   800	*
   801	*   vchiq_ioctl
   802	*
   803	***************************************************************************/
   804	static long
   805	vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
   806	{
   807		VCHIQ_INSTANCE_T instance = file->private_data;
   808		VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
   809		struct vchiq_service *service = NULL;
   810		long ret = 0;
   811		int i, rc;
   812	
   813		DEBUG_INITIALISE(g_state.local)
   814	
   815		vchiq_log_trace(vchiq_arm_log_level,
   816			"%s - instance %pK, cmd %s, arg %lx",
   817			__func__, instance,
   818			((_IOC_TYPE(cmd) == VCHIQ_IOC_MAGIC) &&
   819			(_IOC_NR(cmd) <= VCHIQ_IOC_MAX)) ?
   820			ioctl_names[_IOC_NR(cmd)] : "<invalid>", arg);
   821	
   822		switch (cmd) {
   823		case VCHIQ_IOC_SHUTDOWN:
   824			if (!instance->connected)
   825				break;
   826	
   827			/* Remove all services */
   828			i = 0;
 > 829			while (service = next_service_by_instance(instance->state,
   830				instance, &i)) {
   831				status = vchiq_remove_service(service->handle);
   832				unlock_service(service);
   833				if (status != VCHIQ_SUCCESS)
   834					break;
   835			}
   836			service = NULL;
   837	
   838			if (status == VCHIQ_SUCCESS) {
   839				/* Wake the completion thread and ask it to exit */
   840				instance->closing = 1;
   841				complete(&instance->insert_event);
   842			}
   843	
   844			break;
   845	
   846		case VCHIQ_IOC_CONNECT:
   847			if (instance->connected) {
   848				ret = -EINVAL;
   849				break;
   850			}
   851			rc = mutex_lock_killable(&instance->state->mutex);
   852			if (rc) {
   853				vchiq_log_error(vchiq_arm_log_level,
   854					"vchiq: connect: could not lock mutex for "
   855					"state %d: %d",
   856					instance->state->id, rc);
   857				ret = -EINTR;
   858				break;
   859			}
   860			status = vchiq_connect_internal(instance->state, instance);
   861			mutex_unlock(&instance->state->mutex);
   862	
   863			if (status == VCHIQ_SUCCESS)
   864				instance->connected = 1;
   865			else
   866				vchiq_log_error(vchiq_arm_log_level,
   867					"vchiq: could not connect: %d", status);
   868			break;
   869	
   870		case VCHIQ_IOC_CREATE_SERVICE: {
   871			struct vchiq_create_service args;
   872			struct user_service *user_service = NULL;
   873			void *userdata;
   874			int srvstate;
   875	
   876			if (copy_from_user(&args, (const void __user *)arg,
   877					   sizeof(args))) {
   878				ret = -EFAULT;
   879				break;
   880			}
   881	
   882			user_service = kmalloc(sizeof(*user_service), GFP_KERNEL);
   883			if (!user_service) {
   884				ret = -ENOMEM;
   885				break;
   886			}
   887	
   888			if (args.is_open) {
   889				if (!instance->connected) {
   890					ret = -ENOTCONN;
   891					kfree(user_service);
   892					break;
   893				}
   894				srvstate = VCHIQ_SRVSTATE_OPENING;
   895			} else {
   896				srvstate =
   897					 instance->connected ?
   898					 VCHIQ_SRVSTATE_LISTENING :
   899					 VCHIQ_SRVSTATE_HIDDEN;
   900			}
   901	
   902			userdata = args.params.userdata;
   903			args.params.callback = service_callback;
   904			args.params.userdata = user_service;
   905			service = vchiq_add_service_internal(
   906					instance->state,
   907					&args.params, srvstate,
   908					instance, user_service_free);
   909	
   910			if (service) {
   911				user_service->service = service;
   912				user_service->userdata = userdata;
   913				user_service->instance = instance;
   914				user_service->is_vchi = (args.is_vchi != 0);
   915				user_service->dequeue_pending = 0;
   916				user_service->close_pending = 0;
   917				user_service->message_available_pos =
   918					instance->completion_remove - 1;
   919				user_service->msg_insert = 0;
   920				user_service->msg_remove = 0;
   921				init_completion(&user_service->insert_event);
   922				init_completion(&user_service->remove_event);
   923				init_completion(&user_service->close_event);
   924	
   925				if (args.is_open) {
   926					status = vchiq_open_service_internal
   927						(service, instance->pid);
   928					if (status != VCHIQ_SUCCESS) {
   929						vchiq_remove_service(service->handle);
   930						service = NULL;
   931						ret = (status == VCHIQ_RETRY) ?
   932							-EINTR : -EIO;
   933						break;
   934					}
   935				}
   936	
   937				if (copy_to_user((void __user *)
   938					&(((struct vchiq_create_service __user *)
   939						arg)->handle),
   940					(const void *)&service->handle,
   941					sizeof(service->handle))) {
   942					ret = -EFAULT;
   943					vchiq_remove_service(service->handle);
   944				}
   945	
   946				service = NULL;
   947			} else {
   948				ret = -EEXIST;
   949				kfree(user_service);
   950			}
   951		} break;
   952	
   953		case VCHIQ_IOC_CLOSE_SERVICE:
   954		case VCHIQ_IOC_REMOVE_SERVICE: {
   955			VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
   956			struct user_service *user_service;
   957	
   958			service = find_service_for_instance(instance, handle);
   959			if (!service) {
   960				ret = -EINVAL;
   961				break;
   962			}
   963	
   964			user_service = service->base.userdata;
   965	
   966			/* close_pending is false on first entry, and when the
   967			   wait in vchiq_close_service has been interrupted. */
   968			if (!user_service->close_pending) {
   969				status = (cmd == VCHIQ_IOC_CLOSE_SERVICE) ?
   970					 vchiq_close_service(service->handle) :
   971					 vchiq_remove_service(service->handle);
   972				if (status != VCHIQ_SUCCESS)
   973					break;
   974			}
   975	
   976			/* close_pending is true once the underlying service
   977			   has been closed until the client library calls the
   978			   CLOSE_DELIVERED ioctl, signalling close_event. */
   979			if (user_service->close_pending &&
   980				wait_for_completion_interruptible(
   981					&user_service->close_event))
   982				status = VCHIQ_RETRY;
   983			break;
   984		}
   985	
   986		case VCHIQ_IOC_USE_SERVICE:
   987		case VCHIQ_IOC_RELEASE_SERVICE:	{
   988			VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
   989	
   990			service = find_service_for_instance(instance, handle);
   991			if (service) {
   992				status = (cmd == VCHIQ_IOC_USE_SERVICE)	?
   993					vchiq_use_service_internal(service) :
   994					vchiq_release_service_internal(service);
   995				if (status != VCHIQ_SUCCESS) {
   996					vchiq_log_error(vchiq_susp_log_level,
   997						"%s: cmd %s returned error %d for "
   998						"service %c%c%c%c:%03d",
   999						__func__,
  1000						(cmd == VCHIQ_IOC_USE_SERVICE) ?
  1001							"VCHIQ_IOC_USE_SERVICE" :
  1002							"VCHIQ_IOC_RELEASE_SERVICE",
  1003						status,
  1004						VCHIQ_FOURCC_AS_4CHARS(
  1005							service->base.fourcc),
  1006						service->client_id);
  1007					ret = -EINVAL;
  1008				}
  1009			} else
  1010				ret = -EINVAL;
  1011		} break;
  1012	
  1013		case VCHIQ_IOC_QUEUE_MESSAGE: {
  1014			struct vchiq_queue_message args;
  1015	
  1016			if (copy_from_user(&args, (const void __user *)arg,
  1017					   sizeof(args))) {
  1018				ret = -EFAULT;
  1019				break;
  1020			}
  1021	
  1022			service = find_service_for_instance(instance, args.handle);
  1023	
  1024			if (service && (args.count <= MAX_ELEMENTS)) {
  1025				/* Copy elements into kernel space */
  1026				struct vchiq_element elements[MAX_ELEMENTS];
  1027	
  1028				if (copy_from_user(elements, args.elements,
  1029					args.count * sizeof(struct vchiq_element)) == 0)
  1030					status = vchiq_ioc_queue_message
  1031						(args.handle,
  1032						elements, args.count);
  1033				else
  1034					ret = -EFAULT;
  1035			} else {
  1036				ret = -EINVAL;
  1037			}
  1038		} break;
  1039	
  1040		case VCHIQ_IOC_QUEUE_BULK_TRANSMIT:
  1041		case VCHIQ_IOC_QUEUE_BULK_RECEIVE: {
  1042			struct vchiq_queue_bulk_transfer args;
  1043			struct bulk_waiter_node *waiter = NULL;
  1044	
  1045			VCHIQ_BULK_DIR_T dir =
  1046				(cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT) ?
  1047				VCHIQ_BULK_TRANSMIT : VCHIQ_BULK_RECEIVE;
  1048	
  1049			if (copy_from_user(&args, (const void __user *)arg,
  1050					   sizeof(args))) {
  1051				ret = -EFAULT;
  1052				break;
  1053			}
  1054	
  1055			service = find_service_for_instance(instance, args.handle);
  1056			if (!service) {
  1057				ret = -EINVAL;
  1058				break;
  1059			}
  1060	
  1061			if (args.mode == VCHIQ_BULK_MODE_BLOCKING) {
  1062				waiter = kzalloc(sizeof(struct bulk_waiter_node),
  1063					GFP_KERNEL);
  1064				if (!waiter) {
  1065					ret = -ENOMEM;
  1066					break;
  1067				}
  1068	
  1069				args.userdata = &waiter->bulk_waiter;
  1070			} else if (args.mode == VCHIQ_BULK_MODE_WAITING) {
  1071				mutex_lock(&instance->bulk_waiter_list_mutex);
  1072				list_for_each_entry(waiter, &instance->bulk_waiter_list,
  1073						    list) {
  1074					if (waiter->pid == current->pid) {
  1075						list_del(&waiter->list);
  1076						break;
  1077					}
  1078				}
  1079				mutex_unlock(&instance->bulk_waiter_list_mutex);
  1080				if (!waiter) {
  1081					vchiq_log_error(vchiq_arm_log_level,
  1082						"no bulk_waiter found for pid %d",
  1083						current->pid);
  1084					ret = -ESRCH;
  1085					break;
  1086				}
  1087				vchiq_log_info(vchiq_arm_log_level,
  1088					"found bulk_waiter %pK for pid %d", waiter,
  1089					current->pid);
  1090				args.userdata = &waiter->bulk_waiter;
  1091			}
  1092	
  1093			status = vchiq_bulk_transfer(args.handle, args.data, args.size,
  1094						     args.userdata, args.mode, dir);
  1095	
  1096			if (!waiter)
  1097				break;
  1098	
  1099			if ((status != VCHIQ_RETRY) || fatal_signal_pending(current) ||
  1100				!waiter->bulk_waiter.bulk) {
  1101				if (waiter->bulk_waiter.bulk) {
  1102					/* Cancel the signal when the transfer
  1103					** completes. */
  1104					spin_lock(&bulk_waiter_spinlock);
  1105					waiter->bulk_waiter.bulk->userdata = NULL;
  1106					spin_unlock(&bulk_waiter_spinlock);
  1107				}
  1108				kfree(waiter);
  1109			} else {
  1110				const VCHIQ_BULK_MODE_T mode_waiting =
  1111					VCHIQ_BULK_MODE_WAITING;
  1112				waiter->pid = current->pid;
  1113				mutex_lock(&instance->bulk_waiter_list_mutex);
  1114				list_add(&waiter->list, &instance->bulk_waiter_list);
  1115				mutex_unlock(&instance->bulk_waiter_list_mutex);
  1116				vchiq_log_info(vchiq_arm_log_level,
  1117					"saved bulk_waiter %pK for pid %d",
  1118					waiter, current->pid);
  1119	
  1120				if (copy_to_user((void __user *)
  1121					&(((struct vchiq_queue_bulk_transfer __user *)
  1122						arg)->mode),
  1123					(const void *)&mode_waiting,
  1124					sizeof(mode_waiting)))
  1125					ret = -EFAULT;
  1126			}
  1127		} break;
  1128	
  1129		case VCHIQ_IOC_AWAIT_COMPLETION: {
  1130			struct vchiq_await_completion args;
  1131	
  1132			DEBUG_TRACE(AWAIT_COMPLETION_LINE);
  1133			if (!instance->connected) {
  1134				ret = -ENOTCONN;
  1135				break;
  1136			}
  1137	
  1138			if (copy_from_user(&args, (const void __user *)arg,
  1139				sizeof(args))) {
  1140				ret = -EFAULT;
  1141				break;
  1142			}
  1143	
  1144			mutex_lock(&instance->completion_mutex);
  1145	
  1146			DEBUG_TRACE(AWAIT_COMPLETION_LINE);
  1147			while ((instance->completion_remove ==
  1148				instance->completion_insert)
  1149				&& !instance->closing) {
  1150				int rc;
  1151	
  1152				DEBUG_TRACE(AWAIT_COMPLETION_LINE);
  1153				mutex_unlock(&instance->completion_mutex);
  1154				rc = wait_for_completion_interruptible(
  1155							&instance->insert_event);
  1156				mutex_lock(&instance->completion_mutex);
  1157				if (rc) {
  1158					DEBUG_TRACE(AWAIT_COMPLETION_LINE);
  1159					vchiq_log_info(vchiq_arm_log_level,
  1160						"AWAIT_COMPLETION interrupted");
  1161					ret = -EINTR;
  1162					break;
  1163				}
  1164			}
  1165			DEBUG_TRACE(AWAIT_COMPLETION_LINE);
  1166	
  1167			if (ret == 0) {
  1168				int msgbufcount = args.msgbufcount;
  1169				int remove = instance->completion_remove;
  1170	
  1171				for (ret = 0; ret < args.count; ret++) {
  1172					struct vchiq_completion_data *completion;
  1173					struct vchiq_service *service;
  1174					struct user_service *user_service;
  1175					struct vchiq_header *header;
  1176	
  1177					if (remove == instance->completion_insert)
  1178						break;
  1179	
  1180					completion = &instance->completions[
  1181						remove & (MAX_COMPLETIONS - 1)];
  1182	
  1183					/*
  1184					 * A read memory barrier is needed to stop
  1185					 * prefetch of a stale completion record
  1186					 */
  1187					rmb();
  1188	
  1189					service = completion->service_userdata;
  1190					user_service = service->base.userdata;
  1191					completion->service_userdata =
  1192						user_service->userdata;
  1193	
  1194					header = completion->header;
  1195					if (header) {
  1196						void __user *msgbuf;
  1197						int msglen;
  1198	
  1199						msglen = header->size +
  1200							sizeof(struct vchiq_header);
  1201						/* This must be a VCHIQ-style service */
  1202						if (args.msgbufsize < msglen) {
  1203							vchiq_log_error(
  1204								vchiq_arm_log_level,
  1205								"header %pK: msgbufsize %x < msglen %x",
  1206								header, args.msgbufsize,
  1207								msglen);
  1208							WARN(1, "invalid message "
  1209								"size\n");
  1210							if (ret == 0)
  1211								ret = -EMSGSIZE;
  1212							break;
  1213						}
  1214						if (msgbufcount <= 0)
  1215							/* Stall here for lack of a
  1216							** buffer for the message. */
  1217							break;
  1218						/* Get the pointer from user space */
  1219						msgbufcount--;
  1220						if (copy_from_user(&msgbuf,
  1221							(const void __user *)
  1222							&args.msgbufs[msgbufcount],
  1223							sizeof(msgbuf))) {
  1224							if (ret == 0)
  1225								ret = -EFAULT;
  1226							break;
  1227						}
  1228	
  1229						/* Copy the message to user space */
  1230						if (copy_to_user(msgbuf, header,
  1231							msglen)) {
  1232							if (ret == 0)
  1233								ret = -EFAULT;
  1234							break;
  1235						}
  1236	
  1237						/* Now it has been copied, the message
  1238						** can be released. */
  1239						vchiq_release_message(service->handle,
  1240							header);
  1241	
  1242						/* The completion must point to the
  1243						** msgbuf. */
  1244						completion->header = msgbuf;
  1245					}
  1246	
  1247					if ((completion->reason ==
  1248						VCHIQ_SERVICE_CLOSED) &&
  1249						!instance->use_close_delivered)
  1250						unlock_service(service);
  1251	
  1252					if (copy_to_user((void __user *)(
  1253						(size_t)args.buf + ret *
  1254						sizeof(struct vchiq_completion_data)),
  1255						completion,
  1256						sizeof(struct vchiq_completion_data))) {
  1257							if (ret == 0)
  1258								ret = -EFAULT;
  1259						break;
  1260					}
  1261	
  1262					/*
  1263					 * Ensure that the above copy has completed
  1264					 * before advancing the remove pointer.
  1265					 */
  1266					mb();
  1267					remove++;
  1268					instance->completion_remove = remove;
  1269				}
  1270	
  1271				if (msgbufcount != args.msgbufcount) {
  1272					if (copy_to_user((void __user *)
  1273						&((struct vchiq_await_completion *)arg)
  1274							->msgbufcount,
  1275						&msgbufcount,
  1276						sizeof(msgbufcount))) {
  1277						ret = -EFAULT;
  1278					}
  1279				}
  1280			}
  1281	
  1282			if (ret)
  1283				complete(&instance->remove_event);
  1284			mutex_unlock(&instance->completion_mutex);
  1285			DEBUG_TRACE(AWAIT_COMPLETION_LINE);
  1286		} break;
  1287	
  1288		case VCHIQ_IOC_DEQUEUE_MESSAGE: {
  1289			struct vchiq_dequeue_message args;
  1290			struct user_service *user_service;
  1291			struct vchiq_header *header;
  1292	
  1293			DEBUG_TRACE(DEQUEUE_MESSAGE_LINE);
  1294			if (copy_from_user(&args, (const void __user *)arg,
  1295					   sizeof(args))) {
  1296				ret = -EFAULT;
  1297				break;
  1298			}
  1299			service = find_service_for_instance(instance, args.handle);
  1300			if (!service) {
  1301				ret = -EINVAL;
  1302				break;
  1303			}
  1304			user_service = (struct user_service *)service->base.userdata;
  1305			if (user_service->is_vchi == 0) {
  1306				ret = -EINVAL;
  1307				break;
  1308			}
  1309	
  1310			spin_lock(&msg_queue_spinlock);
  1311			if (user_service->msg_remove == user_service->msg_insert) {
  1312				if (!args.blocking) {
  1313					spin_unlock(&msg_queue_spinlock);
  1314					DEBUG_TRACE(DEQUEUE_MESSAGE_LINE);
  1315					ret = -EWOULDBLOCK;
  1316					break;
  1317				}
  1318				user_service->dequeue_pending = 1;
  1319				do {
  1320					spin_unlock(&msg_queue_spinlock);
  1321					DEBUG_TRACE(DEQUEUE_MESSAGE_LINE);
  1322					if (wait_for_completion_interruptible(
  1323						&user_service->insert_event)) {
  1324						vchiq_log_info(vchiq_arm_log_level,
  1325							"DEQUEUE_MESSAGE interrupted");
  1326						ret = -EINTR;
  1327						break;
  1328					}
  1329					spin_lock(&msg_queue_spinlock);
  1330				} while (user_service->msg_remove ==
  1331					user_service->msg_insert);
  1332	
  1333				if (ret)
  1334					break;
  1335			}
  1336	
  1337			BUG_ON((int)(user_service->msg_insert -
  1338				user_service->msg_remove) < 0);
  1339	
  1340			header = user_service->msg_queue[user_service->msg_remove &
  1341				(MSG_QUEUE_SIZE - 1)];
  1342			user_service->msg_remove++;
  1343			spin_unlock(&msg_queue_spinlock);
  1344	
  1345			complete(&user_service->remove_event);
  1346			if (!header)
  1347				ret = -ENOTCONN;
  1348			else if (header->size <= args.bufsize) {
  1349				/* Copy to user space if msgbuf is not NULL */
  1350				if (!args.buf ||
  1351					(copy_to_user((void __user *)args.buf,
  1352					header->data,
  1353					header->size) == 0)) {
  1354					ret = header->size;
  1355					vchiq_release_message(
  1356						service->handle,
  1357						header);
  1358				} else
  1359					ret = -EFAULT;
  1360			} else {
  1361				vchiq_log_error(vchiq_arm_log_level,
  1362					"header %pK: bufsize %x < size %x",
  1363					header, args.bufsize, header->size);
  1364				WARN(1, "invalid size\n");
  1365				ret = -EMSGSIZE;
  1366			}
  1367			DEBUG_TRACE(DEQUEUE_MESSAGE_LINE);
  1368		} break;
  1369	
  1370		case VCHIQ_IOC_GET_CLIENT_ID: {
  1371			VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
  1372	
  1373			ret = vchiq_get_client_id(handle);
  1374		} break;
  1375	
  1376		case VCHIQ_IOC_GET_CONFIG: {
  1377			struct vchiq_get_config args;
  1378			struct vchiq_config config;
  1379	
  1380			if (copy_from_user(&args, (const void __user *)arg,
  1381					   sizeof(args))) {
  1382				ret = -EFAULT;
  1383				break;
  1384			}
  1385			if (args.config_size > sizeof(config)) {
  1386				ret = -EINVAL;
  1387				break;
  1388			}
  1389	
  1390			vchiq_get_config(&config);
  1391			if (copy_to_user(args.pconfig, &config, args.config_size)) {
  1392				ret = -EFAULT;
  1393				break;
  1394			}
  1395		} break;
  1396	
  1397		case VCHIQ_IOC_SET_SERVICE_OPTION: {
  1398			struct vchiq_set_service_option args;
  1399	
  1400			if (copy_from_user(&args, (const void __user *)arg,
  1401					   sizeof(args))) {
  1402				ret = -EFAULT;
  1403				break;
  1404			}
  1405	
  1406			service = find_service_for_instance(instance, args.handle);
  1407			if (!service) {
  1408				ret = -EINVAL;
  1409				break;
  1410			}
  1411	
  1412			status = vchiq_set_service_option(
  1413					args.handle, args.option, args.value);
  1414		} break;
  1415	
  1416		case VCHIQ_IOC_LIB_VERSION: {
  1417			unsigned int lib_version = (unsigned int)arg;
  1418	
  1419			if (lib_version < VCHIQ_VERSION_MIN)
  1420				ret = -EINVAL;
  1421			else if (lib_version >= VCHIQ_VERSION_CLOSE_DELIVERED)
  1422				instance->use_close_delivered = 1;
  1423		} break;
  1424	
  1425		case VCHIQ_IOC_CLOSE_DELIVERED: {
  1426			VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
  1427	
  1428			service = find_closed_service_for_instance(instance, handle);
  1429			if (service) {
  1430				struct user_service *user_service =
  1431					(struct user_service *)service->base.userdata;
  1432				close_delivered(user_service);
  1433			} else
  1434				ret = -EINVAL;
  1435		} break;
  1436	
  1437		default:
  1438			ret = -ENOTTY;
  1439			break;
  1440		}
  1441	
  1442		if (service)
  1443			unlock_service(service);
  1444	
  1445		if (ret == 0) {
  1446			if (status == VCHIQ_ERROR)
  1447				ret = -EIO;
  1448			else if (status == VCHIQ_RETRY)
  1449				ret = -EINTR;
  1450		}
  1451	
  1452		if ((status == VCHIQ_SUCCESS) && (ret < 0) && (ret != -EINTR) &&
  1453			(ret != -EWOULDBLOCK))
  1454			vchiq_log_info(vchiq_arm_log_level,
  1455				"  ioctl instance %pK, cmd %s -> status %d, %ld",
  1456				instance,
  1457				(_IOC_NR(cmd) <= VCHIQ_IOC_MAX) ?
  1458					ioctl_names[_IOC_NR(cmd)] :
  1459					"<invalid>",
  1460				status, ret);
  1461		else
  1462			vchiq_log_trace(vchiq_arm_log_level,
  1463				"  ioctl instance %pK, cmd %s -> status %d, %ld",
  1464				instance,
  1465				(_IOC_NR(cmd) <= VCHIQ_IOC_MAX) ?
  1466					ioctl_names[_IOC_NR(cmd)] :
  1467					"<invalid>",
  1468				status, ret);
  1469	
  1470		return ret;
  1471	}
  1472	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--yy72wus6berbrfz6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--yy72wus6berbrfz6
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--yy72wus6berbrfz6--
